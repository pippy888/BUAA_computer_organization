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
static const char *ng0 = "D:/verilogcode/p4/MOVEBIT/MOVEBIT.v";
static int ng1[] = {0, 0};
static int ng2[] = {16, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {1, 0};
static int ng5[] = {32, 0};
static int ng6[] = {31, 0};



static void Always_32_0(char *t0)
{
    char t6[8];
    char t15[8];
    char t22[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t49;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 4144);
    *((int *)t2) = 1;
    t3 = (t0 + 3360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 6);
    xsi_set_current_line(34, ng0);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    goto LAB2;

LAB7:    xsi_set_current_line(34, ng0);

LAB9:    xsi_set_current_line(35, ng0);
    t13 = (t0 + 1208U);
    t14 = *((char **)t13);
    t13 = (t0 + 1168U);
    t16 = (t13 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 2248);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_generic_get_index_select_value(t15, 1, t14, t17, 2, t20, 32, 1);
    t21 = ((char*)((ng3)));
    memset(t22, 0, 8);
    t23 = (t15 + 4);
    t24 = (t21 + 4);
    t25 = *((unsigned int *)t15);
    t26 = *((unsigned int *)t21);
    t27 = (t25 ^ t26);
    t28 = *((unsigned int *)t23);
    t29 = *((unsigned int *)t24);
    t30 = (t28 ^ t29);
    t31 = (t27 | t30);
    t32 = *((unsigned int *)t23);
    t33 = *((unsigned int *)t24);
    t34 = (t32 | t33);
    t35 = (~(t34));
    t36 = (t31 & t35);
    if (t36 != 0)
        goto LAB13;

LAB10:    if (t34 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t22) = 1;

LAB13:    t38 = (t22 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t22);
    t42 = (t41 & t40);
    t43 = (t42 != 0);
    if (t43 > 0)
        goto LAB14;

LAB15:
LAB16:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2248);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB12:    t37 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(35, ng0);

LAB17:    xsi_set_current_line(36, ng0);
    t44 = (t0 + 1768);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = ((char*)((ng4)));
    memset(t48, 0, 8);
    xsi_vlog_unsigned_add(t48, 32, t46, 6, t47, 32);
    t49 = (t0 + 1768);
    xsi_vlogvar_assign_value(t49, t48, 0, 0, 6);
    goto LAB16;

}

static void Always_41_1(char *t0)
{
    char t8[8];
    char t32[8];
    char t36[8];
    char t39[8];
    char t46[8];
    char t58[8];
    char t66[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t67;
    unsigned int t68;
    int t69;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 4160);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t8, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB15;

LAB14:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB15;

LAB18:    if (*((unsigned int *)t3) < *((unsigned int *)t2))
        goto LAB16;

LAB17:    t7 = (t8 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(56, ng0);

LAB47:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    *((unsigned int *)t8) = t12;
    *((unsigned int *)t2) = 0;
    if (*((unsigned int *)t4) != 0)
        goto LAB49;

LAB48:    t17 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t17 & 4294967295U);
    t18 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t18 & 4294967295U);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t8, 0, 0, 32);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1768);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t32, 0, 8);
    xsi_vlog_signed_arith_rshift(t32, 32, t4, 32, t7, 6);
    t9 = (t0 + 2088);
    xsi_vlogvar_assign_value(t9, t32, 0, 0, 32);

LAB21:
LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(42, ng0);

LAB13:    xsi_set_current_line(43, ng0);
    t30 = (t0 + 1048U);
    t31 = *((char **)t30);
    t30 = (t0 + 2088);
    xsi_vlogvar_assign_value(t30, t31, 0, 0, 32);
    goto LAB12;

LAB15:    t6 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB17;

LAB16:    *((unsigned int *)t8) = 1;
    goto LAB17;

LAB19:    xsi_set_current_line(45, ng0);

LAB22:    xsi_set_current_line(46, ng0);
    xsi_set_current_line(46, ng0);
    t9 = ((char*)((ng1)));
    t10 = (t0 + 2408);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 32);

LAB23:    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t4, 32, t5, 32);
    t6 = (t8 + 4);
    t11 = *((unsigned int *)t6);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1768);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t32, 0, 8);
    xsi_vlog_signed_arith_rshift(t32, 32, t4, 32, t7, 6);
    t9 = (t0 + 2088);
    xsi_vlogvar_assign_value(t9, t32, 0, 0, 32);
    goto LAB21;

LAB24:    xsi_set_current_line(46, ng0);

LAB26:    xsi_set_current_line(47, ng0);
    t7 = (t0 + 2408);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t23 = (t0 + 1768);
    t24 = (t23 + 56U);
    t30 = *((char **)t24);
    memset(t32, 0, 8);
    t31 = (t10 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB28;

LAB27:    t33 = (t30 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB28;

LAB31:    if (*((unsigned int *)t10) < *((unsigned int *)t30))
        goto LAB29;

LAB30:    t35 = (t32 + 4);
    t16 = *((unsigned int *)t35);
    t17 = (~(t16));
    t18 = *((unsigned int *)t32);
    t19 = (t18 & t17);
    t20 = (t19 != 0);
    if (t20 > 0)
        goto LAB32;

LAB33:    xsi_set_current_line(50, ng0);

LAB44:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng6)));
    t7 = (t0 + 2408);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memset(t32, 0, 8);
    xsi_vlog_signed_minus(t32, 32, t6, 32, t10, 32);
    xsi_vlog_generic_get_index_select_value(t8, 1, t3, t5, 2, t32, 32, 1);
    t23 = (t0 + 1928);
    t24 = (t0 + 1928);
    t30 = (t24 + 72U);
    t31 = *((char **)t30);
    t33 = ((char*)((ng6)));
    t34 = (t0 + 2408);
    t35 = (t34 + 56U);
    t37 = *((char **)t35);
    memset(t39, 0, 8);
    xsi_vlog_signed_minus(t39, 32, t33, 32, t37, 32);
    xsi_vlog_generic_convert_bit_index(t36, t31, 2, t39, 32, 1);
    t38 = (t36 + 4);
    t11 = *((unsigned int *)t38);
    t69 = (!(t11));
    if (t69 == 1)
        goto LAB45;

LAB46:
LAB34:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t4, 32, t5, 32);
    t6 = (t0 + 2408);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 32);
    goto LAB23;

LAB28:    t34 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB30;

LAB29:    *((unsigned int *)t32) = 1;
    goto LAB30;

LAB32:    xsi_set_current_line(47, ng0);

LAB35:    xsi_set_current_line(48, ng0);
    t37 = (t0 + 1048U);
    t38 = *((char **)t37);
    t37 = (t0 + 1008U);
    t40 = (t37 + 72U);
    t41 = *((char **)t40);
    t42 = ((char*)((ng6)));
    t43 = (t0 + 2408);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memset(t46, 0, 8);
    xsi_vlog_signed_minus(t46, 32, t42, 32, t45, 32);
    xsi_vlog_generic_get_index_select_value(t39, 1, t38, t41, 2, t46, 32, 1);
    memset(t36, 0, 8);
    t47 = (t39 + 4);
    t21 = *((unsigned int *)t47);
    t22 = (~(t21));
    t25 = *((unsigned int *)t39);
    t26 = (t25 & t22);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB39;

LAB37:    if (*((unsigned int *)t47) == 0)
        goto LAB36;

LAB38:    t48 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t48) = 1;

LAB39:    t49 = (t36 + 4);
    t50 = (t39 + 4);
    t28 = *((unsigned int *)t39);
    t29 = (~(t28));
    *((unsigned int *)t36) = t29;
    *((unsigned int *)t49) = 0;
    if (*((unsigned int *)t50) != 0)
        goto LAB41;

LAB40:    t55 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t55 & 1U);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t56 & 1U);
    t57 = (t0 + 1928);
    t59 = (t0 + 1928);
    t60 = (t59 + 72U);
    t61 = *((char **)t60);
    t62 = ((char*)((ng6)));
    t63 = (t0 + 2408);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    memset(t66, 0, 8);
    xsi_vlog_signed_minus(t66, 32, t62, 32, t65, 32);
    xsi_vlog_generic_convert_bit_index(t58, t61, 2, t66, 32, 1);
    t67 = (t58 + 4);
    t68 = *((unsigned int *)t67);
    t69 = (!(t68));
    if (t69 == 1)
        goto LAB42;

LAB43:    goto LAB34;

LAB36:    *((unsigned int *)t36) = 1;
    goto LAB39;

LAB41:    t51 = *((unsigned int *)t36);
    t52 = *((unsigned int *)t50);
    *((unsigned int *)t36) = (t51 | t52);
    t53 = *((unsigned int *)t49);
    t54 = *((unsigned int *)t50);
    *((unsigned int *)t49) = (t53 | t54);
    goto LAB40;

LAB42:    xsi_vlogvar_assign_value(t57, t36, 0, *((unsigned int *)t58), 1);
    goto LAB43;

LAB45:    xsi_vlogvar_assign_value(t23, t8, 0, *((unsigned int *)t36), 1);
    goto LAB46;

LAB49:    t13 = *((unsigned int *)t8);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t8) = (t13 | t14);
    t15 = *((unsigned int *)t2);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t2) = (t15 | t16);
    goto LAB48;

}

static void Cont_62_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 4176);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000000807756381_0995047653_init()
{
	static char *pe[] = {(void *)Always_32_0,(void *)Always_41_1,(void *)Cont_62_2};
	xsi_register_didat("work_m_00000000000807756381_0995047653", "isim/test_MOVEBIT_isim_beh.exe.sim/work/m_00000000000807756381_0995047653.didat");
	xsi_register_executes(pe);
}
