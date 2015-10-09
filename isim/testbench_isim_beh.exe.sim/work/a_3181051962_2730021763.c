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
static const char *ng0 = "/home/sseki/ise/Cartelet/v1/sram_sim.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3181051962_2730021763_p_0(char *t0)
{
    char t38[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    unsigned char t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3872U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5664);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 5744);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t3, 2U, 1, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t10 = (1 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 5744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t4, 1U, 1, 0LL);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t10 = (2 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 5744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t4, 0U, 1, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 5808);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_delta(t1, 0U, 32U, 0LL);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 5872);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 20U);
    xsi_driver_first_trans_delta(t1, 40U, 20U, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t10 = (1 - 3);
    t11 = (t10 * -1);
    t12 = (20U * t11);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t4 = (t0 + 5872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 20U);
    xsi_driver_first_trans_delta(t4, 20U, 20U, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t10 = (2 - 3);
    t11 = (t10 * -1);
    t12 = (20U * t11);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t4 = (t0 + 5872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 20U);
    xsi_driver_first_trans_delta(t4, 0U, 20U, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)0, 32U);
    t4 = (t0 + 4368U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    memcpy(t4, t1, 32U);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t10 = (0 - 19);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t14 = (2 - 3);
    t13 = (t14 * -1);
    t15 = (20U * t13);
    t16 = (0 + t15);
    t17 = (t16 + t12);
    t1 = (t3 + t17);
    t5 = *((unsigned char *)t1);
    t18 = (t5 == (unsigned char)3);
    if (t18 == 1)
        goto LAB8;

LAB9:    t4 = (t0 + 3752U);
    t6 = *((char **)t4);
    t19 = (0 - 19);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (2 - 3);
    t23 = (t22 * -1);
    t24 = (20U * t23);
    t25 = (0 + t24);
    t26 = (t25 + t21);
    t4 = (t6 + t26);
    t27 = *((unsigned char *)t4);
    t28 = (t27 == (unsigned char)2);
    t2 = t28;

LAB10:    if (t2 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(71, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)0, 32U);
    t4 = (t0 + 4368U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    memcpy(t4, t1, 32U);

LAB6:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t10 = (1 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t2 = *((unsigned char *)t1);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4368U);
    t3 = *((char **)t1);
    t1 = (t0 + 6000);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(64, ng0);
    t7 = (t0 + 3432U);
    t8 = *((char **)t7);
    t29 = (2 - 3);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t7 = (t8 + t32);
    t33 = *((unsigned char *)t7);
    t34 = (t33 == (unsigned char)2);
    if (t34 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t1 = (t0 + 3752U);
    t4 = *((char **)t1);
    t10 = (2 - 3);
    t11 = (t10 * -1);
    t12 = (20U * t11);
    t13 = (0 + t12);
    t1 = (t4 + t13);
    t6 = (t38 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 19;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t14 = (0 - 19);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t15;
    t19 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t1, t38);
    t22 = (t19 - 1023);
    t15 = (t22 * -1);
    xsi_vhdl_check_range_of_index(1023, 0, -1, t19);
    t16 = (32U * t15);
    t17 = (0 + t16);
    t7 = (t3 + t17);
    t8 = (t0 + 4368U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t7, 32U);

LAB12:    goto LAB6;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    xsi_set_current_line(65, ng0);
    t9 = xsi_get_transient_memory(32U);
    memset(t9, 0, 32U);
    t35 = t9;
    memset(t35, (unsigned char)4, 32U);
    t36 = (t0 + 4368U);
    t37 = *((char **)t36);
    t36 = (t37 + 0);
    memcpy(t36, t9, 32U);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 3752U);
    t4 = *((char **)t1);
    t10 = (2 - 3);
    t11 = (t10 * -1);
    t12 = (20U * t11);
    t13 = (0 + t12);
    t1 = (t4 + t13);
    t6 = (t38 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 19;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t14 = (0 - 19);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t15;
    t19 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t1, t38);
    t22 = (t19 - 1023);
    t15 = (t22 * -1);
    t16 = (32U * t15);
    t17 = (0U + t16);
    t7 = (t0 + 5936);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t35 = (t9 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t3, 32U);
    xsi_driver_first_trans_delta(t7, t17, 32U, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(74, ng0);
    t4 = xsi_get_transient_memory(32U);
    memset(t4, 0, 32U);
    t6 = t4;
    memset(t6, (unsigned char)4, 32U);
    t7 = (t0 + 4368U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    memcpy(t7, t4, 32U);
    goto LAB15;

}


extern void work_a_3181051962_2730021763_init()
{
	static char *pe[] = {(void *)work_a_3181051962_2730021763_p_0};
	xsi_register_didat("work_a_3181051962_2730021763", "isim/testbench_isim_beh.exe.sim/work/a_3181051962_2730021763.didat");
	xsi_register_executes(pe);
}
