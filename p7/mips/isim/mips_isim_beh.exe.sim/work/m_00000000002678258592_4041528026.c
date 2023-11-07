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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/verilogcode/p7/LoadMemData/LoadMemData.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {7, 0};
static int ng4[] = {8, 0};
static int ng5[] = {24, 0};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {15, 0};
static int ng8[] = {16, 0};
static int ng9[] = {1, 0};



static void Always_28_0(char *t0)
{
    char t9[8];
    char t10[8];
    char t11[8];
    char t14[8];
    char t24[8];
    char t25[8];
    char t27[8];
    char t31[8];
    char t36[8];
    char t46[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB14:
LAB13:    xsi_set_current_line(39, ng0);

LAB19:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);

LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(30, ng0);

LAB16:    xsi_set_current_line(31, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB15;

LAB9:    xsi_set_current_line(33, ng0);

LAB17:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1008U);
    t7 = (t3 + 72U);
    t8 = *((char **)t7);
    t12 = ((char*)((ng3)));
    t13 = ((char*)((ng4)));
    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    memset(t14, 0, 8);
    t15 = (t14 + 4);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t16);
    t19 = (t18 >> 0);
    *((unsigned int *)t14) = t19;
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 0);
    *((unsigned int *)t15) = t21;
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 3U);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 3U);
    memset(t24, 0, 8);
    xsi_vlog_unsigned_multiply(t24, 32, t13, 32, t14, 32);
    memset(t25, 0, 8);
    xsi_vlog_unsigned_add(t25, 32, t12, 32, t24, 32);
    t26 = ((char*)((ng4)));
    xsi_vlog_get_indexed_partselect(t11, 8, t4, ((int*)(t8)), 2, t25, 32, 2, t26, 32, 1, 0);
    xsi_vlogtype_concat(t10, 8, 8, 1U, t11, 8);
    t28 = ((char*)((ng5)));
    t29 = (t0 + 1048U);
    t30 = *((char **)t29);
    t29 = (t0 + 1008U);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng3)));
    t35 = ((char*)((ng4)));
    t37 = (t0 + 1208U);
    t38 = *((char **)t37);
    memset(t36, 0, 8);
    t37 = (t36 + 4);
    t39 = (t38 + 4);
    t40 = *((unsigned int *)t38);
    t41 = (t40 >> 0);
    *((unsigned int *)t36) = t41;
    t42 = *((unsigned int *)t39);
    t43 = (t42 >> 0);
    *((unsigned int *)t37) = t43;
    t44 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t44 & 3U);
    t45 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t45 & 3U);
    memset(t46, 0, 8);
    xsi_vlog_unsigned_multiply(t46, 32, t35, 32, t36, 32);
    memset(t47, 0, 8);
    xsi_vlog_unsigned_add(t47, 32, t34, 32, t46, 32);
    xsi_vlog_generic_get_index_select_value(t31, 1, t30, t33, 2, t47, 32, 2);
    xsi_vlog_mul_concat(t27, 24, 1, t28, 1U, t31, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t27, 24, t10, 8);
    t48 = (t0 + 1768);
    xsi_vlogvar_assign_value(t48, t9, 0, 0, 32);
    goto LAB15;

LAB11:    xsi_set_current_line(36, ng0);

LAB18:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1008U);
    t7 = (t3 + 72U);
    t8 = *((char **)t7);
    t12 = ((char*)((ng7)));
    t13 = ((char*)((ng8)));
    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    t15 = (t0 + 1168U);
    t17 = (t15 + 72U);
    t26 = *((char **)t17);
    t28 = ((char*)((ng9)));
    xsi_vlog_generic_get_index_select_value(t14, 32, t16, t26, 2, t28, 32, 1);
    memset(t24, 0, 8);
    xsi_vlog_unsigned_multiply(t24, 32, t13, 32, t14, 32);
    memset(t25, 0, 8);
    xsi_vlog_unsigned_add(t25, 32, t12, 32, t24, 32);
    t29 = ((char*)((ng8)));
    xsi_vlog_get_indexed_partselect(t11, 16, t4, ((int*)(t8)), 2, t25, 32, 2, t29, 32, 1, 0);
    xsi_vlogtype_concat(t10, 16, 16, 1U, t11, 16);
    t30 = ((char*)((ng8)));
    t32 = (t0 + 1048U);
    t33 = *((char **)t32);
    t32 = (t0 + 1008U);
    t34 = (t32 + 72U);
    t35 = *((char **)t34);
    t37 = ((char*)((ng7)));
    t38 = ((char*)((ng8)));
    t39 = (t0 + 1208U);
    t48 = *((char **)t39);
    t39 = (t0 + 1168U);
    t49 = (t39 + 72U);
    t50 = *((char **)t49);
    t51 = ((char*)((ng9)));
    xsi_vlog_generic_get_index_select_value(t36, 32, t48, t50, 2, t51, 32, 1);
    memset(t46, 0, 8);
    xsi_vlog_unsigned_multiply(t46, 32, t38, 32, t36, 32);
    memset(t47, 0, 8);
    xsi_vlog_unsigned_add(t47, 32, t37, 32, t46, 32);
    xsi_vlog_generic_get_index_select_value(t31, 1, t33, t35, 2, t47, 32, 2);
    xsi_vlog_mul_concat(t27, 16, 1, t30, 1U, t31, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t27, 16, t10, 16);
    t52 = (t0 + 1768);
    xsi_vlogvar_assign_value(t52, t9, 0, 0, 32);
    goto LAB15;

}


extern void work_m_00000000002678258592_4041528026_init()
{
	static char *pe[] = {(void *)Always_28_0};
	xsi_register_didat("work_m_00000000002678258592_4041528026", "isim/mips_isim_beh.exe.sim/work/m_00000000002678258592_4041528026.didat");
	xsi_register_executes(pe);
}
