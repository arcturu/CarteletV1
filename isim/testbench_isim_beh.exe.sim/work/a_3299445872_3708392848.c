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
static const char *ng0 = "/home/sseki/ise/Cartelet/v1/sender.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935724872_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3299445872_3708392848_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(36, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (0 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + 32U);
    t7 = (t6 + t5);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 4416);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_delta(t9, 0U, 1, 0LL);

LAB2:    t14 = (t0 + 4288);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3299445872_3708392848_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (0 + 41U);
    t1 = (t2 + t3);
    t4 = *((unsigned char *)t1);
    t5 = (t4 == (unsigned char)0);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 4480);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_delta(t11, 1U, 1, 0LL);

LAB2:    t16 = (t0 + 4304);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 4480);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_delta(t6, 1U, 1, 0LL);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3299445872_3708392848_p_2(char *t0)
{
    char t17[16];
    char t18[16];
    char t29[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    int t30;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 2248U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 72U);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = (0 + 41U);
    t1 = (t2 + t4);
    t5 = *((unsigned char *)t1);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB2:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t0 + 4544);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t2, 72U);
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 4320);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = (0 + 32U);
    t6 = (t7 + t8);
    t9 = *((unsigned char *)t6);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB2;

LAB4:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = (0 + 42U);
    t1 = (t2 + t4);
    t3 = (t0 + 7799);
    t5 = 1;
    if (16U == 16U)
        goto LAB11;

LAB12:    t5 = 0;

LAB13:    if (t5 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = (0 + 42U);
    t1 = (t2 + t4);
    t3 = (t0 + 5600);
    t6 = xsi_record_get_element_type(t3, 3);
    t7 = (t6 + 72U);
    t11 = *((char **)t7);
    t12 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t17, t1, t11, 1);
    t14 = (t0 + 2248U);
    t15 = *((char **)t14);
    t8 = (0 + 42U);
    t14 = (t15 + t8);
    t22 = (t17 + 12U);
    t13 = *((unsigned int *)t22);
    t16 = (1U * t13);
    memcpy(t14, t12, t16);

LAB9:    goto LAB2;

LAB5:    xsi_set_current_line(46, ng0);
    t11 = (t0 + 1352U);
    t12 = *((char **)t11);
    t13 = (0 + 0U);
    t11 = (t12 + t13);
    t14 = (t0 + 2248U);
    t15 = *((char **)t14);
    t16 = (0 + 0U);
    t14 = (t15 + t16);
    memcpy(t14, t11, 32U);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t4 = (31 - 31);
    t8 = (t4 * 1U);
    t13 = (0 + 0U);
    t16 = (t13 + t8);
    t1 = (t2 + t16);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t18 + 0U);
    t11 = (t7 + 0U);
    *((int *)t11) = 31;
    t11 = (t7 + 4U);
    *((int *)t11) = 24;
    t11 = (t7 + 8U);
    *((int *)t11) = -1;
    t19 = (24 - 31);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t11 = (t7 + 12U);
    *((unsigned int *)t11) = t20;
    t3 = xsi_base_array_concat(t3, t17, t6, (char)97, t1, t18, (char)99, (unsigned char)2, (char)101);
    t11 = (t0 + 2248U);
    t12 = *((char **)t11);
    t20 = (0 + 32U);
    t11 = (t12 + t20);
    t21 = (8U + 1U);
    memcpy(t11, t3, t21);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t4 = (0 + 41U);
    t1 = (t2 + t4);
    *((unsigned char *)t1) = (unsigned char)1;
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 7776);
    t3 = (t0 + 2248U);
    t6 = *((char **)t3);
    t4 = (0 + 42U);
    t3 = (t6 + t4);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 7792);
    t3 = (t0 + 2248U);
    t6 = *((char **)t3);
    t4 = (0 + 58U);
    t3 = (t6 + t4);
    memcpy(t3, t1, 4U);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 7796);
    t3 = (t0 + 2248U);
    t6 = *((char **)t3);
    t4 = (0 + 62U);
    t3 = (t6 + t4);
    memcpy(t3, t1, 3U);
    goto LAB6;

LAB8:    xsi_set_current_line(55, ng0);
    t12 = (t0 + 1672U);
    t14 = *((char **)t12);
    t13 = (0 + 58U);
    t12 = (t14 + t13);
    t15 = (t0 + 5600);
    t22 = xsi_record_get_element_type(t15, 4);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t17, t12, t24, 1);
    t26 = (t0 + 2248U);
    t27 = *((char **)t26);
    t16 = (0 + 58U);
    t26 = (t27 + t16);
    t28 = (t17 + 12U);
    t20 = *((unsigned int *)t28);
    t21 = (1U * t20);
    memcpy(t26, t25, t21);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = (8 - 8);
    t8 = (t4 * 1U);
    t13 = (0 + 32U);
    t16 = (t13 + t8);
    t1 = (t2 + t16);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t18 + 0U);
    t11 = (t7 + 0U);
    *((int *)t11) = 8;
    t11 = (t7 + 4U);
    *((int *)t11) = 1;
    t11 = (t7 + 8U);
    *((int *)t11) = -1;
    t19 = (1 - 8);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t11 = (t7 + 12U);
    *((unsigned int *)t11) = t20;
    t3 = xsi_base_array_concat(t3, t17, t6, (char)99, (unsigned char)3, (char)97, t1, t18, (char)101);
    t11 = (t0 + 2248U);
    t12 = *((char **)t11);
    t20 = (0 + 32U);
    t11 = (t12 + t20);
    t21 = (1U + 8U);
    memcpy(t11, t3, t21);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 7815);
    t3 = (t0 + 2248U);
    t6 = *((char **)t3);
    t4 = (0 + 42U);
    t3 = (t6 + t4);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = (0 + 58U);
    t1 = (t2 + t4);
    t3 = (t0 + 7831);
    t5 = 1;
    if (4U == 4U)
        goto LAB20;

LAB21:    t5 = 0;

LAB22:    if (t5 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t4 = (0 + 41U);
    t1 = (t2 + t4);
    *((unsigned char *)t1) = (unsigned char)1;

LAB18:    goto LAB9;

LAB11:    t8 = 0;

LAB14:    if (t8 < 16U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t7 = (t1 + t8);
    t11 = (t3 + t8);
    if (*((unsigned char *)t7) != *((unsigned char *)t11))
        goto LAB12;

LAB16:    t8 = (t8 + 1);
    goto LAB14;

LAB17:    xsi_set_current_line(59, ng0);
    t12 = (t0 + 1672U);
    t14 = *((char **)t12);
    t13 = (0 + 62U);
    t12 = (t14 + t13);
    t15 = (t0 + 5600);
    t22 = xsi_record_get_element_type(t15, 5);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t17, t12, t24, 1);
    t26 = (t0 + 2248U);
    t27 = *((char **)t26);
    t16 = (0 + 62U);
    t26 = (t27 + t16);
    t28 = (t17 + 12U);
    t20 = *((unsigned int *)t28);
    t21 = (1U * t20);
    memcpy(t26, t25, t21);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t4 = (0 + 62U);
    t1 = (t2 + t4);
    t3 = (t0 + 7835);
    t5 = 1;
    if (3U == 3U)
        goto LAB29;

LAB30:    t5 = 0;

LAB31:    if (t5 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = (31 - 23);
    t8 = (t4 * 1U);
    t13 = (0 + 0U);
    t16 = (t13 + t8);
    t1 = (t2 + t16);
    t3 = (t0 + 7838);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t18 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 23;
    t14 = (t12 + 4U);
    *((int *)t14) = 0;
    t14 = (t12 + 8U);
    *((int *)t14) = -1;
    t19 = (0 - 23);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t20;
    t14 = (t29 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 7;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t30 = (7 - 0);
    t20 = (t30 * 1);
    t20 = (t20 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t20;
    t7 = xsi_base_array_concat(t7, t17, t11, (char)97, t1, t18, (char)97, t3, t29, (char)101);
    t15 = (t0 + 2248U);
    t22 = *((char **)t15);
    t20 = (0 + 0U);
    t15 = (t22 + t20);
    t21 = (24U + 8U);
    memcpy(t15, t7, t21);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t4 = (31 - 31);
    t8 = (t4 * 1U);
    t13 = (0 + 0U);
    t16 = (t13 + t8);
    t1 = (t2 + t16);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t18 + 0U);
    t11 = (t7 + 0U);
    *((int *)t11) = 31;
    t11 = (t7 + 4U);
    *((int *)t11) = 24;
    t11 = (t7 + 8U);
    *((int *)t11) = -1;
    t19 = (24 - 31);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t11 = (t7 + 12U);
    *((unsigned int *)t11) = t20;
    t3 = xsi_base_array_concat(t3, t17, t6, (char)97, t1, t18, (char)99, (unsigned char)2, (char)101);
    t11 = (t0 + 2248U);
    t12 = *((char **)t11);
    t20 = (0 + 32U);
    t11 = (t12 + t20);
    t21 = (8U + 1U);
    memcpy(t11, t3, t21);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 7846);
    t3 = (t0 + 2248U);
    t6 = *((char **)t3);
    t4 = (0 + 58U);
    t3 = (t6 + t4);
    memcpy(t3, t1, 4U);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t4 = (0 + 41U);
    t1 = (t2 + t4);
    *((unsigned char *)t1) = (unsigned char)1;

LAB27:    goto LAB18;

LAB20:    t8 = 0;

LAB23:    if (t8 < 4U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t7 = (t1 + t8);
    t11 = (t3 + t8);
    if (*((unsigned char *)t7) != *((unsigned char *)t11))
        goto LAB21;

LAB25:    t8 = (t8 + 1);
    goto LAB23;

LAB26:    xsi_set_current_line(61, ng0);
    t12 = (t0 + 2248U);
    t14 = *((char **)t12);
    t13 = (0 + 41U);
    t12 = (t14 + t13);
    *((unsigned char *)t12) = (unsigned char)0;
    goto LAB27;

LAB29:    t8 = 0;

LAB32:    if (t8 < 3U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t7 = (t1 + t8);
    t11 = (t3 + t8);
    if (*((unsigned char *)t7) != *((unsigned char *)t11))
        goto LAB30;

LAB34:    t8 = (t8 + 1);
    goto LAB32;

}

static void work_a_3299445872_3708392848_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4336);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 4608);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 72U);
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}


extern void work_a_3299445872_3708392848_init()
{
	static char *pe[] = {(void *)work_a_3299445872_3708392848_p_0,(void *)work_a_3299445872_3708392848_p_1,(void *)work_a_3299445872_3708392848_p_2,(void *)work_a_3299445872_3708392848_p_3};
	xsi_register_didat("work_a_3299445872_3708392848", "isim/testbench_isim_beh.exe.sim/work/a_3299445872_3708392848.didat");
	xsi_register_executes(pe);
}
