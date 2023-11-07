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
static const char *ng0 = "D:/verilogcode/p1/p1_hw1_6/BlockChecker.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int ng3[] = {8, 0};
static int ng4[] = {65, 0};
static int ng5[] = {90, 0};
static unsigned int ng6[] = {32U, 0U};
static int ng7[] = {7, 0};
static int ng8[] = {0, 0};
static int ng9[] = {1701276014, 0, 8290, 0};
static unsigned int ng10[] = {1U, 0U};
static int ng11[] = {32, 0};
static int ng12[] = {543518308, 0};



static void Initial_30_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(30, ng0);

LAB2:    xsi_set_current_line(31, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(32, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 256);

LAB1:    return;
}

static void Always_34_1(char *t0)
{
    char t13[64];
    char t14[8];
    char t15[8];
    char t23[8];
    char t27[8];
    char t35[8];
    char t75[8];
    char t77[8];
    char t78[8];
    char t79[8];
    char t102[16];
    char t103[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    char *t76;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    unsigned int t86;
    int t87;
    char *t88;
    unsigned int t89;
    int t90;
    int t91;
    char *t92;
    unsigned int t93;
    int t94;
    int t95;
    unsigned int t96;
    int t97;
    unsigned int t98;
    unsigned int t99;
    int t100;
    int t101;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;
    char *t141;
    char *t142;
    char *t143;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3824);
    *((int *)t2) = 1;
    t3 = (t0 + 3288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(39, ng0);

LAB10:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    xsi_vlog_unsigned_lshift(t13, 256, t4, 256, t5, 32);
    t11 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 256, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t14, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB12;

LAB11:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB12;

LAB15:    if (*((unsigned int *)t3) < *((unsigned int *)t2))
        goto LAB14;

LAB13:    *((unsigned int *)t14) = 1;

LAB14:    memset(t15, 0, 8);
    t12 = (t14 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (~(t6));
    t8 = *((unsigned int *)t14);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t12) != 0)
        goto LAB18;

LAB19:    t17 = (t15 + 4);
    t18 = *((unsigned int *)t15);
    t19 = *((unsigned int *)t17);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB20;

LAB21:    memcpy(t35, t15, 8);

LAB22:    t67 = (t35 + 4);
    t68 = *((unsigned int *)t67);
    t69 = (~(t68));
    t70 = *((unsigned int *)t35);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1928);
    t4 = (t0 + 1928);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng7)));
    t16 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t14, t15, t23, ((int*)(t11)), 2, t12, 32, 1, t16, 32, 1);
    t17 = (t14 + 4);
    t6 = *((unsigned int *)t17);
    t59 = (!(t6));
    t21 = (t15 + 4);
    t7 = *((unsigned int *)t21);
    t60 = (!(t7));
    t87 = (t59 && t60);
    t22 = (t23 + 4);
    t8 = *((unsigned int *)t22);
    t90 = (!(t8));
    t91 = (t87 && t90);
    if (t91 == 1)
        goto LAB40;

LAB41:
LAB37:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlog_get_part_select_value(t102, 48, t4, 47, 0);
    t5 = ((char*)((ng9)));
    xsi_vlog_unsigned_equal(t103, 48, t102, 48, t5, 48);
    t11 = (t103 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t103);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlog_get_part_select_value(t102, 48, t4, 55, 8);
    t5 = ((char*)((ng9)));
    xsi_vlog_unsigned_equal(t103, 48, t102, 48, t5, 48);
    memset(t14, 0, 8);
    t11 = (t103 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t103);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t11) != 0)
        goto LAB47;

LAB48:    t16 = (t14 + 4);
    t18 = *((unsigned int *)t14);
    t19 = *((unsigned int *)t16);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB49;

LAB50:    memcpy(t35, t14, 8);

LAB51:    t76 = (t35 + 4);
    t111 = *((unsigned int *)t76);
    t112 = (~(t111));
    t113 = *((unsigned int *)t35);
    t114 = (t113 & t112);
    t115 = (t114 != 0);
    if (t115 > 0)
        goto LAB63;

LAB64:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t14, 0, 8);
    t5 = (t14 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 4294967295U);
    t18 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t18 & 4294967295U);
    t12 = ((char*)((ng12)));
    memset(t15, 0, 8);
    t16 = (t14 + 4);
    t17 = (t12 + 4);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t12);
    t29 = (t19 ^ t20);
    t30 = *((unsigned int *)t16);
    t31 = *((unsigned int *)t17);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t36 = *((unsigned int *)t16);
    t37 = *((unsigned int *)t17);
    t38 = (t36 | t37);
    t42 = (~(t38));
    t43 = (t33 & t42);
    if (t43 != 0)
        goto LAB69;

LAB66:    if (t38 != 0)
        goto LAB68;

LAB67:    *((unsigned int *)t15) = 1;

LAB69:    t22 = (t15 + 4);
    t44 = *((unsigned int *)t22);
    t45 = (~(t44));
    t46 = *((unsigned int *)t15);
    t47 = (t46 & t45);
    t48 = (t47 != 0);
    if (t48 > 0)
        goto LAB70;

LAB71:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t14, 0, 8);
    t5 = (t14 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 8);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 8);
    *((unsigned int *)t5) = t9;
    t12 = (t4 + 8);
    t16 = (t4 + 12);
    t10 = *((unsigned int *)t12);
    t18 = (t10 << 24);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t19 | t18);
    t20 = *((unsigned int *)t16);
    t29 = (t20 << 24);
    t30 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t30 | t29);
    t31 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t31 & 4294967295U);
    t32 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t32 & 4294967295U);
    t17 = ((char*)((ng12)));
    memset(t15, 0, 8);
    t21 = (t14 + 4);
    t22 = (t17 + 4);
    t33 = *((unsigned int *)t14);
    t36 = *((unsigned int *)t17);
    t37 = (t33 ^ t36);
    t38 = *((unsigned int *)t21);
    t42 = *((unsigned int *)t22);
    t43 = (t38 ^ t42);
    t44 = (t37 | t43);
    t45 = *((unsigned int *)t21);
    t46 = *((unsigned int *)t22);
    t47 = (t45 | t46);
    t48 = (~(t47));
    t51 = (t44 & t48);
    if (t51 != 0)
        goto LAB76;

LAB73:    if (t47 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t15) = 1;

LAB76:    memset(t23, 0, 8);
    t25 = (t15 + 4);
    t52 = *((unsigned int *)t25);
    t53 = (~(t52));
    t54 = *((unsigned int *)t15);
    t55 = (t54 & t53);
    t56 = (t55 & 1U);
    if (t56 != 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t25) != 0)
        goto LAB79;

LAB80:    t28 = (t23 + 4);
    t57 = *((unsigned int *)t23);
    t58 = *((unsigned int *)t28);
    t61 = (t57 || t58);
    if (t61 > 0)
        goto LAB81;

LAB82:    memcpy(t77, t23, 8);

LAB83:    t88 = (t77 + 4);
    t135 = *((unsigned int *)t88);
    t136 = (~(t135));
    t137 = *((unsigned int *)t77);
    t138 = (t137 & t136);
    t139 = (t138 != 0);
    if (t139 > 0)
        goto LAB95;

LAB96:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB97:
LAB72:
LAB65:
LAB44:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(35, ng0);

LAB9:    xsi_set_current_line(36, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 256, 0LL);
    goto LAB8;

LAB12:    t11 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB14;

LAB16:    *((unsigned int *)t15) = 1;
    goto LAB19;

LAB18:    t16 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB19;

LAB20:    t21 = (t0 + 1368U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng5)));
    memset(t23, 0, 8);
    t24 = (t22 + 4);
    if (*((unsigned int *)t24) != 0)
        goto LAB24;

LAB23:    t25 = (t21 + 4);
    if (*((unsigned int *)t25) != 0)
        goto LAB24;

LAB27:    if (*((unsigned int *)t22) > *((unsigned int *)t21))
        goto LAB26;

LAB25:    *((unsigned int *)t23) = 1;

LAB26:    memset(t27, 0, 8);
    t28 = (t23 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t23);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t28) != 0)
        goto LAB30;

LAB31:    t36 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t27);
    t38 = (t36 & t37);
    *((unsigned int *)t35) = t38;
    t39 = (t15 + 4);
    t40 = (t27 + 4);
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t39);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB32;

LAB33:
LAB34:    goto LAB22;

LAB24:    t26 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB26;

LAB28:    *((unsigned int *)t27) = 1;
    goto LAB31;

LAB30:    t34 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB31;

LAB32:    t47 = *((unsigned int *)t35);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t35) = (t47 | t48);
    t49 = (t15 + 4);
    t50 = (t27 + 4);
    t51 = *((unsigned int *)t15);
    t52 = (~(t51));
    t53 = *((unsigned int *)t49);
    t54 = (~(t53));
    t55 = *((unsigned int *)t27);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (~(t57));
    t59 = (t52 & t54);
    t60 = (t56 & t58);
    t61 = (~(t59));
    t62 = (~(t60));
    t63 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t63 & t61);
    t64 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t64 & t62);
    t65 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t65 & t61);
    t66 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t66 & t62);
    goto LAB34;

LAB35:    xsi_set_current_line(42, ng0);
    t73 = (t0 + 1368U);
    t74 = *((char **)t73);
    t73 = ((char*)((ng6)));
    memset(t75, 0, 8);
    xsi_vlog_unsigned_add(t75, 8, t74, 8, t73, 8);
    t76 = (t0 + 1928);
    t80 = (t0 + 1928);
    t81 = (t80 + 72U);
    t82 = *((char **)t81);
    t83 = ((char*)((ng7)));
    t84 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t77, t78, t79, ((int*)(t82)), 2, t83, 32, 1, t84, 32, 1);
    t85 = (t77 + 4);
    t86 = *((unsigned int *)t85);
    t87 = (!(t86));
    t88 = (t78 + 4);
    t89 = *((unsigned int *)t88);
    t90 = (!(t89));
    t91 = (t87 && t90);
    t92 = (t79 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (!(t93));
    t95 = (t91 && t94);
    if (t95 == 1)
        goto LAB38;

LAB39:    goto LAB37;

LAB38:    t96 = *((unsigned int *)t79);
    t97 = (t96 + 0);
    t98 = *((unsigned int *)t77);
    t99 = *((unsigned int *)t78);
    t100 = (t98 - t99);
    t101 = (t100 + 1);
    xsi_vlogvar_wait_assign_value(t76, t75, t97, *((unsigned int *)t78), t101, 0LL);
    goto LAB39;

LAB40:    t9 = *((unsigned int *)t23);
    t94 = (t9 + 0);
    t10 = *((unsigned int *)t14);
    t18 = *((unsigned int *)t15);
    t95 = (t10 - t18);
    t97 = (t95 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t94, *((unsigned int *)t15), t97, 0LL);
    goto LAB41;

LAB42:    xsi_set_current_line(47, ng0);
    t12 = (t0 + 2088);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t21 = ((char*)((ng10)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t17, 32, t21, 32);
    t22 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t22, t14, 0, 0, 32, 0LL);
    goto LAB44;

LAB45:    *((unsigned int *)t14) = 1;
    goto LAB48;

LAB47:    t12 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB48;

LAB49:    t17 = (t0 + 1928);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    memset(t15, 0, 8);
    t24 = (t15 + 4);
    t25 = (t22 + 4);
    t29 = *((unsigned int *)t22);
    t30 = (t29 >> 0);
    *((unsigned int *)t15) = t30;
    t31 = *((unsigned int *)t25);
    t32 = (t31 >> 0);
    *((unsigned int *)t24) = t32;
    t33 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t33 & 255U);
    t36 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t36 & 255U);
    t26 = ((char*)((ng11)));
    memset(t23, 0, 8);
    t28 = (t15 + 4);
    t34 = (t26 + 4);
    t37 = *((unsigned int *)t15);
    t38 = *((unsigned int *)t26);
    t42 = (t37 ^ t38);
    t43 = *((unsigned int *)t28);
    t44 = *((unsigned int *)t34);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t28);
    t48 = *((unsigned int *)t34);
    t51 = (t47 | t48);
    t52 = (~(t51));
    t53 = (t46 & t52);
    if (t53 != 0)
        goto LAB53;

LAB52:    if (t51 != 0)
        goto LAB54;

LAB55:    memset(t27, 0, 8);
    t40 = (t23 + 4);
    t54 = *((unsigned int *)t40);
    t55 = (~(t54));
    t56 = *((unsigned int *)t23);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t40) != 0)
        goto LAB58;

LAB59:    t61 = *((unsigned int *)t14);
    t62 = *((unsigned int *)t27);
    t63 = (t61 & t62);
    *((unsigned int *)t35) = t63;
    t49 = (t14 + 4);
    t50 = (t27 + 4);
    t67 = (t35 + 4);
    t64 = *((unsigned int *)t49);
    t65 = *((unsigned int *)t50);
    t66 = (t64 | t65);
    *((unsigned int *)t67) = t66;
    t68 = *((unsigned int *)t67);
    t69 = (t68 != 0);
    if (t69 == 1)
        goto LAB60;

LAB61:
LAB62:    goto LAB51;

LAB53:    *((unsigned int *)t23) = 1;
    goto LAB55;

LAB54:    t39 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB55;

LAB56:    *((unsigned int *)t27) = 1;
    goto LAB59;

LAB58:    t41 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB59;

LAB60:    t70 = *((unsigned int *)t35);
    t71 = *((unsigned int *)t67);
    *((unsigned int *)t35) = (t70 | t71);
    t73 = (t14 + 4);
    t74 = (t27 + 4);
    t72 = *((unsigned int *)t14);
    t86 = (~(t72));
    t89 = *((unsigned int *)t73);
    t93 = (~(t89));
    t96 = *((unsigned int *)t27);
    t98 = (~(t96));
    t99 = *((unsigned int *)t74);
    t104 = (~(t99));
    t59 = (t86 & t93);
    t60 = (t98 & t104);
    t105 = (~(t59));
    t106 = (~(t60));
    t107 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t107 & t105);
    t108 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t108 & t106);
    t109 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t109 & t105);
    t110 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t110 & t106);
    goto LAB62;

LAB63:    xsi_set_current_line(49, ng0);
    t80 = (t0 + 2088);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    t83 = ((char*)((ng10)));
    memset(t75, 0, 8);
    xsi_vlog_unsigned_minus(t75, 32, t82, 32, t83, 32);
    t84 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t84, t75, 0, 0, 32, 0LL);
    goto LAB65;

LAB68:    t21 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB69;

LAB70:    xsi_set_current_line(51, ng0);
    t24 = (t0 + 2088);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t28 = ((char*)((ng10)));
    memset(t23, 0, 8);
    xsi_vlog_unsigned_minus(t23, 32, t26, 32, t28, 32);
    t34 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t34, t23, 0, 0, 32, 0LL);
    goto LAB72;

LAB75:    t24 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB76;

LAB77:    *((unsigned int *)t23) = 1;
    goto LAB80;

LAB79:    t26 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB80;

LAB81:    t34 = (t0 + 1928);
    t39 = (t34 + 56U);
    t40 = *((char **)t39);
    memset(t27, 0, 8);
    t41 = (t27 + 4);
    t49 = (t40 + 4);
    t62 = *((unsigned int *)t40);
    t63 = (t62 >> 0);
    *((unsigned int *)t27) = t63;
    t64 = *((unsigned int *)t49);
    t65 = (t64 >> 0);
    *((unsigned int *)t41) = t65;
    t66 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t66 & 255U);
    t68 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t68 & 255U);
    t50 = ((char*)((ng11)));
    memset(t35, 0, 8);
    t67 = (t27 + 4);
    t73 = (t50 + 4);
    t69 = *((unsigned int *)t27);
    t70 = *((unsigned int *)t50);
    t71 = (t69 ^ t70);
    t72 = *((unsigned int *)t67);
    t86 = *((unsigned int *)t73);
    t89 = (t72 ^ t86);
    t93 = (t71 | t89);
    t96 = *((unsigned int *)t67);
    t98 = *((unsigned int *)t73);
    t99 = (t96 | t98);
    t104 = (~(t99));
    t105 = (t93 & t104);
    if (t105 != 0)
        goto LAB85;

LAB84:    if (t99 != 0)
        goto LAB86;

LAB87:    memset(t75, 0, 8);
    t76 = (t35 + 4);
    t106 = *((unsigned int *)t76);
    t107 = (~(t106));
    t108 = *((unsigned int *)t35);
    t109 = (t108 & t107);
    t110 = (t109 & 1U);
    if (t110 != 0)
        goto LAB88;

LAB89:    if (*((unsigned int *)t76) != 0)
        goto LAB90;

LAB91:    t111 = *((unsigned int *)t23);
    t112 = *((unsigned int *)t75);
    t113 = (t111 & t112);
    *((unsigned int *)t77) = t113;
    t81 = (t23 + 4);
    t82 = (t75 + 4);
    t83 = (t77 + 4);
    t114 = *((unsigned int *)t81);
    t115 = *((unsigned int *)t82);
    t116 = (t114 | t115);
    *((unsigned int *)t83) = t116;
    t117 = *((unsigned int *)t83);
    t118 = (t117 != 0);
    if (t118 == 1)
        goto LAB92;

LAB93:
LAB94:    goto LAB83;

LAB85:    *((unsigned int *)t35) = 1;
    goto LAB87;

LAB86:    t74 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t74) = 1;
    goto LAB87;

LAB88:    *((unsigned int *)t75) = 1;
    goto LAB91;

LAB90:    t80 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t80) = 1;
    goto LAB91;

LAB92:    t119 = *((unsigned int *)t77);
    t120 = *((unsigned int *)t83);
    *((unsigned int *)t77) = (t119 | t120);
    t84 = (t23 + 4);
    t85 = (t75 + 4);
    t121 = *((unsigned int *)t23);
    t122 = (~(t121));
    t123 = *((unsigned int *)t84);
    t124 = (~(t123));
    t125 = *((unsigned int *)t75);
    t126 = (~(t125));
    t127 = *((unsigned int *)t85);
    t128 = (~(t127));
    t59 = (t122 & t124);
    t60 = (t126 & t128);
    t129 = (~(t59));
    t130 = (~(t60));
    t131 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t131 & t129);
    t132 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t132 & t130);
    t133 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t133 & t129);
    t134 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t134 & t130);
    goto LAB94;

LAB95:    xsi_set_current_line(53, ng0);
    t92 = (t0 + 2088);
    t140 = (t92 + 56U);
    t141 = *((char **)t140);
    t142 = ((char*)((ng10)));
    memset(t78, 0, 8);
    xsi_vlog_unsigned_add(t78, 32, t141, 32, t142, 32);
    t143 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t143, t78, 0, 0, 32, 0LL);
    goto LAB97;

}

static void Cont_59_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
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
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2088);
    t5 = (t2 + 56U);
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
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    memset(t4, 0, 8);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t24) != 0)
        goto LAB10;

LAB11:    t31 = (t4 + 4);
    t32 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t31) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t41 = (t0 + 3920);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memset(t45, 0, 8);
    t46 = 1U;
    t47 = t46;
    t48 = (t3 + 4);
    t49 = *((unsigned int *)t3);
    t46 = (t46 & t49);
    t50 = *((unsigned int *)t48);
    t47 = (t47 & t50);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 | t46);
    t53 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t53 | t47);
    xsi_driver_vfirst_trans(t41, 0, 0);
    t54 = (t0 + 3840);
    *((int *)t54) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t30 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    t35 = ((char*)((ng10)));
    goto LAB13;

LAB14:    t40 = ((char*)((ng1)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 1, t35, 1, t40, 1);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}


extern void work_m_00000000002694578500_1075435344_init()
{
	static char *pe[] = {(void *)Initial_30_0,(void *)Always_34_1,(void *)Cont_59_2};
	xsi_register_didat("work_m_00000000002694578500_1075435344", "isim/p1_hw1_6tb_isim_beh.exe.sim/work/m_00000000002694578500_1075435344.didat");
	xsi_register_executes(pe);
}
