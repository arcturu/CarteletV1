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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/sseki/ise/Cartelet/v1/alu.vhd";
extern char *WORK_P_1475539293;
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_3525738511873186323_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3525738511873258197_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0832606739_3708392848_p_0(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    char *t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;

LAB0:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 2248U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = (0 + 0U);
    t1 = (t2 + t4);
    t3 = ((WORK_P_1475539293) + 4288U);
    t5 = *((char **)t3);
    t6 = xsi_mem_cmp(t5, t1, 4U);
    if (t6 == 1)
        goto LAB3;

LAB6:    t3 = ((WORK_P_1475539293) + 4408U);
    t7 = *((char **)t3);
    t8 = xsi_mem_cmp(t7, t1, 4U);
    if (t8 == 1)
        goto LAB4;

LAB7:
LAB5:    xsi_set_current_line(33, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 2248U);
    t5 = *((char **)t3);
    t4 = (0 + 0U);
    t3 = (t5 + t4);
    memcpy(t3, t1, 32U);

LAB2:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = (0 + 0U);
    t1 = (t2 + t4);
    t3 = (t0 + 3888);
    t5 = (t3 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_delta(t3, 0U, 32U, 0LL);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t0 + 3952);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1352U);
    t10 = *((char **)t3);
    t11 = (0 + 4U);
    t3 = (t10 + t11);
    t12 = ((WORK_P_1475539293) + 7200);
    t13 = xsi_record_get_element_type(t12, 1);
    t14 = (t13 + 72U);
    t15 = *((char **)t14);
    t16 = (t0 + 1352U);
    t17 = *((char **)t16);
    t18 = (0 + 36U);
    t16 = (t17 + t18);
    t19 = ((WORK_P_1475539293) + 7200);
    t20 = xsi_record_get_element_type(t19, 2);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = ieee_p_1242562249_sub_3525738511873186323_1035706684(IEEE_P_1242562249, t9, t3, t15, t16, t22);
    t24 = (t0 + 2248U);
    t25 = *((char **)t24);
    t26 = (0 + 0U);
    t24 = (t25 + t26);
    t27 = (t9 + 12U);
    t28 = *((unsigned int *)t27);
    t29 = (1U * t28);
    memcpy(t24, t23, t29);
    goto LAB2;

LAB4:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = (0 + 4U);
    t1 = (t2 + t4);
    t3 = ((WORK_P_1475539293) + 7200);
    t5 = xsi_record_get_element_type(t3, 1);
    t7 = (t5 + 72U);
    t10 = *((char **)t7);
    t12 = (t0 + 1352U);
    t13 = *((char **)t12);
    t11 = (0 + 36U);
    t12 = (t13 + t11);
    t14 = ((WORK_P_1475539293) + 7200);
    t15 = xsi_record_get_element_type(t14, 2);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t19 = ieee_p_1242562249_sub_3525738511873258197_1035706684(IEEE_P_1242562249, t9, t1, t10, t12, t17);
    t20 = (t0 + 2248U);
    t21 = *((char **)t20);
    t18 = (0 + 0U);
    t20 = (t21 + t18);
    t22 = (t9 + 12U);
    t26 = *((unsigned int *)t22);
    t28 = (1U * t26);
    memcpy(t20, t19, t28);
    goto LAB2;

LAB8:;
}

static void work_a_0832606739_3708392848_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3808);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 4016);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 32U);
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}


extern void work_a_0832606739_3708392848_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3708392848_p_0,(void *)work_a_0832606739_3708392848_p_1};
	xsi_register_didat("work_a_0832606739_3708392848", "isim/testbench_isim_beh.exe.sim/work/a_0832606739_3708392848.didat");
	xsi_register_executes(pe);
}
