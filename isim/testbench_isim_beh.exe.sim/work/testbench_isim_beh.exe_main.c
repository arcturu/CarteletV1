/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *WORK_P_1475539293;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *IEEE_P_2717149903;
char *UNISIM_P_3222816464;
char *IEEE_P_1367372525;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_1475539293_init();
    unisim_p_0947159679_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_1490675510_1976025627_init();
    unisim_a_0780662263_2014779070_init();
    unisim_a_4167558488_0695499473_init();
    unisim_a_0897948483_3703648270_init();
    unisim_a_0420191103_3703648270_init();
    unisim_a_0435408399_0783196562_init();
    unisim_a_0110033931_0551479669_init();
    work_a_0712990941_3212880686_init();
    unisim_a_0829101269_0551479669_init();
    work_a_2254337599_3212880686_init();
    work_a_1540812317_3708392848_init();
    work_a_2210518722_3708392848_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_2036101082_2959432447_init();
    xilinxcorelib_a_1673580150_1709443946_init();
    xilinxcorelib_a_1742302932_0543512595_init();
    xilinxcorelib_a_3163438738_3212880686_init();
    work_a_3501706103_3793974171_init();
    work_a_0832606739_3708392848_init();
    work_a_1415465652_3708392848_init();
    work_a_3033812342_3708392848_init();
    unisim_a_0512718346_0551479669_init();
    work_a_4047396398_3212880686_init();
    work_a_3181051962_2730021763_init();
    work_a_1949178628_2372691052_init();


    xsi_register_tops("work_a_1949178628_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_1475539293 = xsi_get_engine_memory("work_p_1475539293");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
