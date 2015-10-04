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
static const char *ng0 = "/home/sseki/ise/Cartelet/v1/receiver.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935724872_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0482260143_3708392848_p_0(char *t0)
{
    char t21[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6};

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 2248U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 72U);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = (0 - 1);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + 0U);
    t8 = (t7 + t6);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t3 = (t0 + 2248U);
    t10 = *((char **)t3);
    t11 = (1 - 1);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + 0U);
    t15 = (t14 + t13);
    t3 = (t10 + t15);
    *((unsigned char *)t3) = t9;
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = (0 + 0U);
    t1 = (t2 + t5);
    t9 = *((unsigned char *)t1);
    t3 = (t0 + 2248U);
    t10 = *((char **)t3);
    t6 = (0 + 65U);
    t3 = (t10 + t6);
    *((unsigned char *)t3) = t9;
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t5 = (0 + 66U);
    t1 = (t2 + t5);
    t9 = *((unsigned char *)t1);
    t3 = (char *)((nl0) + t9);
    goto **((char **)t3);

LAB2:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t4 = (0 - 1);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + 0U);
    t8 = (t7 + t6);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t3 = (t0 + 3888);
    t10 = (t3 + 56U);
    t16 = *((char **)t10);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t9;
    xsi_driver_first_trans_delta(t3, 32U, 1, 0LL);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (0 + 0U);
    t1 = (t2 + t5);
    t3 = (t0 + 7410);
    t9 = 1;
    if (2U == 2U)
        goto LAB52;

LAB53:    t9 = 0;

LAB54:    if (t9 != 0)
        goto LAB49;

LAB51:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 3888);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t10 = (t3 + 56U);
    t16 = *((char **)t10);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 33U, 1, 0LL);

LAB50:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (0 + 2U);
    t1 = (t2 + t5);
    t3 = (t0 + 3888);
    t10 = (t3 + 56U);
    t16 = *((char **)t10);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 32U);
    xsi_driver_first_trans_delta(t3, 0U, 32U, 0LL);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t0 + 3952);
    t3 = (t1 + 56U);
    t10 = *((char **)t3);
    t16 = (t10 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 72U);
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(48, ng0);
    t10 = (t0 + 1672U);
    t16 = *((char **)t10);
    t6 = (0 + 65U);
    t10 = (t16 + t6);
    t17 = *((unsigned char *)t10);
    t18 = (t17 == (unsigned char)2);
    if (t18 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t5 = (0 + 49U);
    t1 = (t2 + t5);
    t3 = (t0 + 5112);
    t10 = xsi_record_get_element_type(t3, 5);
    t16 = (t10 + 72U);
    t19 = *((char **)t16);
    t20 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t21, t1, t19, 1);
    t23 = (t0 + 2248U);
    t24 = *((char **)t23);
    t6 = (0 + 49U);
    t23 = (t24 + t6);
    t25 = (t21 + 12U);
    t7 = *((unsigned int *)t25);
    t8 = (1U * t7);
    memcpy(t23, t20, t8);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (0 + 49U);
    t1 = (t2 + t5);
    t3 = (t0 + 7319);
    t9 = 1;
    if (16U == 16U)
        goto LAB13;

LAB14:    t9 = 0;

LAB15:    if (t9 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB2;

LAB5:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t5 = (0 + 49U);
    t1 = (t2 + t5);
    t3 = (t0 + 5112);
    t10 = xsi_record_get_element_type(t3, 5);
    t16 = (t10 + 72U);
    t19 = *((char **)t16);
    t20 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t21, t1, t19, 1);
    t23 = (t0 + 2248U);
    t24 = *((char **)t23);
    t6 = (0 + 49U);
    t23 = (t24 + t6);
    t25 = (t21 + 12U);
    t7 = *((unsigned int *)t25);
    t8 = (1U * t7);
    memcpy(t23, t20, t8);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (0 + 49U);
    t1 = (t2 + t5);
    t3 = (t0 + 7351);
    t9 = 1;
    if (16U == 16U)
        goto LAB22;

LAB23:    t9 = 0;

LAB24:    if (t9 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB2;

LAB6:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t5 = (0 + 65U);
    t1 = (t2 + t5);
    t9 = *((unsigned char *)t1);
    t17 = (t9 == (unsigned char)2);
    if (t17 != 0)
        goto LAB46;

LAB48:
LAB47:    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);
    t19 = (t0 + 2248U);
    t20 = *((char **)t19);
    t4 = (0 - 1);
    t7 = (t4 * -1);
    t8 = (1U * t7);
    t12 = (0 + 0U);
    t13 = (t12 + t8);
    t19 = (t20 + t13);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (0 + 66U);
    t1 = (t2 + t5);
    *((unsigned char *)t1) = (unsigned char)1;
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 7296);
    t5 = (15 - 15);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t1 + t7);
    t16 = ((IEEE_P_2592010699) + 4000);
    t19 = (t22 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 15;
    t20 = (t19 + 4U);
    *((int *)t20) = 1;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t4 = (1 - 15);
    t8 = (t4 * -1);
    t8 = (t8 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t8;
    t10 = xsi_base_array_concat(t10, t21, t16, (char)99, (unsigned char)2, (char)97, t3, t22, (char)101);
    t20 = (t0 + 2248U);
    t23 = *((char **)t20);
    t8 = (0 + 49U);
    t20 = (t23 + t8);
    t12 = (1U + 15U);
    memcpy(t20, t10, t12);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 7312);
    t3 = (t0 + 2248U);
    t10 = *((char **)t3);
    t5 = (0 + 45U);
    t3 = (t10 + t5);
    memcpy(t3, t1, 4U);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 7316);
    t3 = (t0 + 2248U);
    t10 = *((char **)t3);
    t5 = (0 + 34U);
    t3 = (t10 + t5);
    memcpy(t3, t1, 3U);
    goto LAB8;

LAB10:    xsi_set_current_line(58, ng0);
    t20 = (t0 + 2248U);
    t23 = *((char **)t20);
    t7 = (0 + 66U);
    t20 = (t23 + t7);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 7335);
    t3 = (t0 + 2248U);
    t10 = *((char **)t3);
    t5 = (0 + 49U);
    t3 = (t10 + t5);
    memcpy(t3, t1, 16U);
    goto LAB11;

LAB13:    t6 = 0;

LAB16:    if (t6 < 16U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t16 = (t1 + t6);
    t19 = (t3 + t6);
    if (*((unsigned char *)t16) != *((unsigned char *)t19))
        goto LAB14;

LAB18:    t6 = (t6 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(64, ng0);
    t20 = (t0 + 1672U);
    t23 = *((char **)t20);
    t7 = (0 + 45U);
    t20 = (t23 + t7);
    t24 = (t0 + 5112);
    t25 = xsi_record_get_element_type(t24, 4);
    t26 = (t25 + 72U);
    t27 = *((char **)t26);
    t28 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t21, t20, t27, 1);
    t29 = (t0 + 2248U);
    t30 = *((char **)t29);
    t8 = (0 + 45U);
    t29 = (t30 + t8);
    t31 = (t21 + 12U);
    t12 = *((unsigned int *)t31);
    t13 = (1U * t12);
    memcpy(t29, t28, t13);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 7367);
    t3 = (t0 + 2248U);
    t10 = *((char **)t3);
    t5 = (0 + 49U);
    t3 = (t10 + t5);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (0 + 45U);
    t1 = (t2 + t5);
    t3 = (t0 + 7383);
    t9 = 1;
    if (4U == 4U)
        goto LAB31;

LAB32:    t9 = 0;

LAB33:    if (t9 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t5 = (0 + 65U);
    t1 = (t2 + t5);
    t9 = *((unsigned char *)t1);
    t3 = (t0 + 1672U);
    t10 = *((char **)t3);
    t6 = (7 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + 37U);
    t12 = (t8 + t7);
    t3 = (t10 + t12);
    t19 = ((IEEE_P_2592010699) + 4000);
    t20 = (t22 + 0U);
    t23 = (t20 + 0U);
    *((int *)t23) = 7;
    t23 = (t20 + 4U);
    *((int *)t23) = 1;
    t23 = (t20 + 8U);
    *((int *)t23) = -1;
    t4 = (1 - 7);
    t13 = (t4 * -1);
    t13 = (t13 + 1);
    t23 = (t20 + 12U);
    *((unsigned int *)t23) = t13;
    t16 = xsi_base_array_concat(t16, t21, t19, (char)99, t9, (char)97, t3, t22, (char)101);
    t23 = (t0 + 2248U);
    t24 = *((char **)t23);
    t13 = (0 + 37U);
    t23 = (t24 + t13);
    t14 = (1U + 7U);
    memcpy(t23, t16, t14);

LAB29:    goto LAB20;

LAB22:    t6 = 0;

LAB25:    if (t6 < 16U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t16 = (t1 + t6);
    t19 = (t3 + t6);
    if (*((unsigned char *)t16) != *((unsigned char *)t19))
        goto LAB23;

LAB27:    t6 = (t6 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(67, ng0);
    t20 = (t0 + 1672U);
    t23 = *((char **)t20);
    t7 = (0 + 34U);
    t20 = (t23 + t7);
    t24 = (t0 + 5112);
    t25 = xsi_record_get_element_type(t24, 2);
    t26 = (t25 + 72U);
    t27 = *((char **)t26);
    t28 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t21, t20, t27, 1);
    t29 = (t0 + 2248U);
    t30 = *((char **)t29);
    t8 = (0 + 34U);
    t29 = (t30 + t8);
    t31 = (t21 + 12U);
    t12 = *((unsigned int *)t31);
    t13 = (1U * t12);
    memcpy(t29, t28, t13);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 7387);
    t3 = (t0 + 2248U);
    t10 = *((char **)t3);
    t5 = (0 + 45U);
    t3 = (t10 + t5);
    memcpy(t3, t1, 4U);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t5 = (31 - 23);
    t6 = (t5 * 1U);
    t7 = (0 + 2U);
    t8 = (t7 + t6);
    t1 = (t2 + t8);
    t3 = (t0 + 1672U);
    t10 = *((char **)t3);
    t12 = (0 + 37U);
    t3 = (t10 + t12);
    t19 = ((IEEE_P_2592010699) + 4000);
    t20 = (t22 + 0U);
    t23 = (t20 + 0U);
    *((int *)t23) = 23;
    t23 = (t20 + 4U);
    *((int *)t23) = 0;
    t23 = (t20 + 8U);
    *((int *)t23) = -1;
    t4 = (0 - 23);
    t13 = (t4 * -1);
    t13 = (t13 + 1);
    t23 = (t20 + 12U);
    *((unsigned int *)t23) = t13;
    t23 = (t0 + 5112);
    t24 = xsi_record_get_element_type(t23, 3);
    t25 = (t24 + 72U);
    t26 = *((char **)t25);
    t16 = xsi_base_array_concat(t16, t21, t19, (char)97, t1, t22, (char)97, t3, t26, (char)101);
    t27 = (t0 + 2248U);
    t28 = *((char **)t27);
    t13 = (0 + 2U);
    t27 = (t28 + t13);
    t14 = (24U + 8U);
    memcpy(t27, t16, t14);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (0 + 34U);
    t1 = (t2 + t5);
    t3 = (t0 + 7391);
    t9 = 1;
    if (3U == 3U)
        goto LAB40;

LAB41:    t9 = 0;

LAB42:    if (t9 != 0)
        goto LAB37;

LAB39:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (0 + 66U);
    t1 = (t2 + t5);
    *((unsigned char *)t1) = (unsigned char)3;

LAB38:    goto LAB29;

LAB31:    t6 = 0;

LAB34:    if (t6 < 4U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t16 = (t1 + t6);
    t19 = (t3 + t6);
    if (*((unsigned char *)t16) != *((unsigned char *)t19))
        goto LAB32;

LAB36:    t6 = (t6 + 1);
    goto LAB34;

LAB37:    xsi_set_current_line(71, ng0);
    t20 = (t0 + 2248U);
    t23 = *((char **)t20);
    t7 = (0 + 66U);
    t20 = (t23 + t7);
    *((unsigned char *)t20) = (unsigned char)0;
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t4 = (0 - 1);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + 0U);
    t8 = (t7 + t6);
    t1 = (t2 + t8);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB38;

LAB40:    t6 = 0;

LAB43:    if (t6 < 3U)
        goto LAB44;
    else
        goto LAB42;

LAB44:    t16 = (t1 + t6);
    t19 = (t3 + t6);
    if (*((unsigned char *)t16) != *((unsigned char *)t19))
        goto LAB41;

LAB45:    t6 = (t6 + 1);
    goto LAB43;

LAB46:    xsi_set_current_line(82, ng0);
    t3 = (t0 + 2248U);
    t10 = *((char **)t3);
    t6 = (0 + 66U);
    t3 = (t10 + t6);
    *((unsigned char *)t3) = (unsigned char)1;
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 7394);
    t5 = (15 - 15);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t1 + t7);
    t16 = ((IEEE_P_2592010699) + 4000);
    t19 = (t22 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 15;
    t20 = (t19 + 4U);
    *((int *)t20) = 1;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t4 = (1 - 15);
    t8 = (t4 * -1);
    t8 = (t8 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t8;
    t10 = xsi_base_array_concat(t10, t21, t16, (char)99, (unsigned char)2, (char)97, t3, t22, (char)101);
    t20 = (t0 + 2248U);
    t23 = *((char **)t20);
    t8 = (0 + 49U);
    t20 = (t23 + t8);
    t12 = (1U + 15U);
    memcpy(t20, t10, t12);
    goto LAB47;

LAB49:    xsi_set_current_line(89, ng0);
    t20 = (t0 + 3888);
    t23 = (t20 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = (unsigned char)3;
    xsi_driver_first_trans_delta(t20, 33U, 1, 0LL);
    goto LAB50;

LAB52:    t6 = 0;

LAB55:    if (t6 < 2U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t16 = (t1 + t6);
    t19 = (t3 + t6);
    if (*((unsigned char *)t16) != *((unsigned char *)t19))
        goto LAB53;

LAB57:    t6 = (t6 + 1);
    goto LAB55;

}

static void work_a_0482260143_3708392848_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3808);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(100, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 4016);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 72U);
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}


extern void work_a_0482260143_3708392848_init()
{
	static char *pe[] = {(void *)work_a_0482260143_3708392848_p_0,(void *)work_a_0482260143_3708392848_p_1};
	xsi_register_didat("work_a_0482260143_3708392848", "isim/testbench_isim_beh.exe.sim/work/a_0482260143_3708392848.didat");
	xsi_register_executes(pe);
}
