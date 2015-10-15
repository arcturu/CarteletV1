
module TagDict = Map.Make(String)

let half_byte_to_hex hb =
    match hb with
    | "0000" -> "0"
    | "0001" -> "1"
    | "0010" -> "2"
    | "0011" -> "3"
    | "0100" -> "4"
    | "0101" -> "5"
    | "0110" -> "6"
    | "0111" -> "7"
    | "1000" -> "8"
    | "1001" -> "9"
    | "1010" -> "a"
    | "1011" -> "b"
    | "1100" -> "c"
    | "1101" -> "d"
    | "1110" -> "e"
    | "1111" -> "f"
    | _ -> raise (Failure "matching failed in half_byte_to_hex")

let hex_to_half_byte hex =
    match hex with
    | "0" -> "0000"
    | "1" -> "0001"
    | "2" -> "0010"
    | "3" -> "0011"
    | "4" -> "0100"
    | "5" -> "0101"
    | "6" -> "0110"
    | "7" -> "0111"
    | "8" -> "1000"
    | "9" -> "1001"
    | "a" -> "1010"
    | "b" -> "1011"
    | "c" -> "1100"
    | "d" -> "1101"
    | "e" -> "1110"
    | "f" -> "1111"
    | _ -> raise (Failure "matching failed in hex_to_half_byte")

let rec to_bin dec =
    let half = dec / 2 in
    if dec mod 2 = 0 then
        if half > 0 then
            to_bin half ^ "0"
        else
            ""
    else
        to_bin half ^ "1"

let rec not' binstr =
    if String.length binstr > 0 then
        let car = String.sub binstr 0 1 in
        let cdr = String.sub binstr 1 (String.length binstr - 1) in
        match car with
        | "0" -> "1" ^ not' cdr
        | "1" -> "0" ^ not' cdr
        | _ -> raise (Failure "matching failed in not'")
    else
        ""

let rec to_dec binstr =
    if String.length binstr > 0 then
        let head = String.sub binstr 0 (String.length binstr - 1) in
        let tail = String.sub binstr (String.length binstr - 1) 1 in
        int_of_string tail + 2 * to_dec head
    else
        0

let neg binstr =
    to_bin (to_dec (not' binstr) + 1)

let rec zfill str num =
    if String.length str < num then
        zfill ("0" ^ str) num
    else
        str

let reg_to_bin str =
    let num = int_of_string (String.sub str 1 (String.length str - 1)) in
    zfill (to_bin num) 5

let rec repeat str num =
    if num > 0 then
        str ^ repeat str (num - 1)
    else ""

let dec_imm_to_bin str =
    let car = String.sub str 0 1 in
    let cdr = String.sub str 1 (String.length str - 1) in
    match car with
    | "-" -> neg (zfill (to_bin (int_of_string cdr)) 16)
    | _   -> zfill (to_bin (int_of_string str)) 16

(* hex をそのまま bin にするだけ (符号は非対応) *)
let rec hex_imm_to_bin str =
    if String.length str > 0 then
        let car = String.sub str 0 1 in
        let cdr = String.sub str 1 (String.length str - 1) in
        hex_to_half_byte car ^ hex_imm_to_bin cdr
    else
        ""

let imm_to_bin' str =
    if String.length str > 2 &&  String.sub str 0 2 = "0x" then
        hex_imm_to_bin (String.sub str 2 (String.length str - 2))
    else
        dec_imm_to_bin str

let imm_to_bin str =
    let res = imm_to_bin' str in
    if String.length res <= 16 then
        res
    else
        raise (Failure "immediate overflow")

let tag_to_bin str line tag_dict =
    let target_line = TagDict.find str tag_dict in
    imm_to_bin (string_of_int (target_line - line - 1))

let asm_to_bin line str tag_dict =
    let tokens = Str.split (Str.regexp "[ \t]+") str in
    match List.hd tokens with
    | "nop"  -> repeat "0" 32
    | "add"  -> "000001" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           reg_to_bin (List.nth tokens 3) ^ repeat "0" 11
    | "addi" -> "000010" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           imm_to_bin (List.nth tokens 3)
    | "sub"  -> "000011" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           reg_to_bin (List.nth tokens 3) ^ repeat "0" 11
    | "subi" -> "000100" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           imm_to_bin (List.nth tokens 3)
    | "sll"  -> "000101" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           reg_to_bin (List.nth tokens 3) ^ repeat "0" 11
    | "srl"  -> "000110" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           reg_to_bin (List.nth tokens 3) ^ repeat "0" 11
    | "st"   -> "001000" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^ repeat "0" 16
    | "ld"   -> "001001" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^ repeat "0" 16
    | "beq"  -> "010000" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           tag_to_bin (List.nth tokens 3) line tag_dict
    | "bneq" -> "010001" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           tag_to_bin (List.nth tokens 3) line tag_dict
    | "jal"  -> "010011" ^ repeat "0" 10 ^
                           tag_to_bin (List.nth tokens 1) line tag_dict
    | "slt"  -> "010100" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           reg_to_bin (List.nth tokens 3) ^ repeat "0" 11
    | "bclt" -> "010101" ^ repeat "0" 10 ^
                           tag_to_bin (List.nth tokens 1) line tag_dict
    | "bclf" -> "010110" ^ repeat "0" 10 ^
                           tag_to_bin (List.nth tokens 1) line tag_dict
    | "jr"   -> "010010" ^ reg_to_bin (List.nth tokens 1) ^ repeat "0" 21
    | "send" -> "100000" ^ reg_to_bin (List.nth tokens 1) ^ repeat "0" 21
    | "halt" -> "100001" ^ repeat "0" 26
    | "fadd" -> "110000" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           reg_to_bin (List.nth tokens 3) ^ repeat "0" 11
    | "fmul" -> "110001" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           reg_to_bin (List.nth tokens 3) ^ repeat "0" 11
    | "finv" -> "110010" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^
                           reg_to_bin (List.nth tokens 3) ^ repeat "0" 11
    | "fneg" -> "110011" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^ repeat "0" 16
    | "fabs" -> "110100" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^ repeat "0" 16
    | "fst"  -> "110101" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^ repeat "0" 16
    | "fld"  -> "110110" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^ repeat "0" 16
    | "fseq" -> "110111" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^ repeat "0" 16
    | "fslt" -> "111000" ^ reg_to_bin (List.nth tokens 1) ^
                           reg_to_bin (List.nth tokens 2) ^ repeat "0" 16
    | _ -> raise (Failure "matching failed in asm_to_bin")

let rec split_by_num str num =
    let l = String.length str in
    if l > num then
        String.sub str 0 num :: split_by_num (String.sub str num (l - num)) num
    else
        [str]

let bin_to_hex str =
    let str = (
        let r = String.length str mod 4 in
        if r != 0 then
            repeat "0" (4 - r) ^ str
        else
            str) in
    let half_bytes = split_by_num str 4 in
    List.fold_left (fun acc hb -> acc ^ half_byte_to_hex hb) "" half_bytes


let asm_to_hex line str tag_dict =
    bin_to_hex (asm_to_bin line str tag_dict)

let remove_comment str =
    try
        String.sub str 0 (String.index str '#')
    with Not_found -> str

let assemble asms tag_dict mode =
    let asms = List.filter (fun (_, x) -> not (Str.string_match (Str.regexp "[\t ]*$") x 0)) (List.rev_map (fun (line, str) -> (line, remove_comment str)) asms) in
    if mode = "hexstr" then
        List.fold_left (fun acc (line, asm) -> acc ^ asm_to_hex line asm tag_dict) "" asms
    else
        List.fold_left (fun acc (line, asm) -> acc ^ "x\"" ^ asm_to_hex line asm tag_dict ^ "\",\n") "" asms

let () =
    if Array.length Sys.argv <= 2 then
        Printf.printf "%s [list/hexstr] [input file]\n" Sys.argv.(0)
    else
        let mode = Sys.argv.(1) in
        let file = Sys.argv.(2) in
        let ic = open_in file in
        let asms = ref [] in
        let line = ref 1 in
        let tag_dict = ref TagDict.empty in
        try
            while true do
                let asm = input_line ic in
                let len = String.length asm in
                if len > 0 then
                    let lst = Str.split (Str.regexp ":") asm in
                    if List.length lst = 1 && Str.string_match (Str.regexp ".*:.*") asm 0 then
                        tag_dict := TagDict.add (List.hd lst) !line !tag_dict
                    else if List.length lst > 1 then
                        (tag_dict := TagDict.add (List.hd lst) !line !tag_dict;
                        asms := (!line, List.hd (List.tl lst)) :: !asms; (* reverse me later *)
                        line := !line + 1)
                    else
                        (asms := (!line, asm) :: !asms; (* reverse me later *)
                        line := !line + 1)
                else
                    ()
            done
        with End_of_file ->
            Printf.printf "%d\n" (!line - 1);
            Printf.printf "%s\n" (assemble !asms !tag_dict mode);
            close_in ic
