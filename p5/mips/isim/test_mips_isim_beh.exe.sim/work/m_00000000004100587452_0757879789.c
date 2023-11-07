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
static const char *ng0 = "D:/verilogcode/p5/NPC/NPC.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {4, 0};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {0U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {12288U, 0U};
static int ng8[] = {8, 0};



static void Cont_33_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t35[8];
    char t38[8];
    char t39[8];
    char t44[8];
    char t45[8];
    char t48[8];
    char t75[8];
    char t80[8];
    char t93[8];
    char t94[8];
    char t97[8];
    char t130[8];
    char t131[8];
    char t133[8];
    char t162[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t46;
    char *t47;
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
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t95;
    char *t96;
    char *t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t132;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    char *t148;
    char *t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    char *t161;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;
    char *t168;
    char *t169;
    char *t170;
    char *t171;
    char *t172;
    char *t173;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t40 = *((unsigned int *)t4);
    t41 = (~(t40));
    t42 = *((unsigned int *)t29);
    t43 = (t41 || t42);
    if (t43 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t44, 8);

LAB20:    t168 = (t0 + 3992);
    t169 = (t168 + 56U);
    t170 = *((char **)t169);
    t171 = (t170 + 56U);
    t172 = *((char **)t171);
    memcpy(t172, t3, 8);
    xsi_driver_vfirst_trans(t168, 0, 31);
    t173 = (t0 + 3896);
    *((int *)t173) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 1208U);
    t34 = *((char **)t33);
    t33 = ((char*)((ng2)));
    memset(t35, 0, 8);
    xsi_vlog_unsigned_add(t35, 32, t34, 32, t33, 32);
    t36 = (t0 + 1528U);
    t37 = *((char **)t36);
    t36 = ((char*)((ng3)));
    memset(t38, 0, 8);
    xsi_vlog_unsigned_lshift(t38, 32, t37, 32, t36, 32);
    memset(t39, 0, 8);
    xsi_vlog_unsigned_add(t39, 32, t35, 32, t38, 32);
    goto LAB13;

LAB14:    t46 = (t0 + 1368U);
    t47 = *((char **)t46);
    t46 = ((char*)((ng4)));
    memset(t48, 0, 8);
    t49 = (t47 + 4);
    t50 = (t46 + 4);
    t51 = *((unsigned int *)t47);
    t52 = *((unsigned int *)t46);
    t53 = (t51 ^ t52);
    t54 = *((unsigned int *)t49);
    t55 = *((unsigned int *)t50);
    t56 = (t54 ^ t55);
    t57 = (t53 | t56);
    t58 = *((unsigned int *)t49);
    t59 = *((unsigned int *)t50);
    t60 = (t58 | t59);
    t61 = (~(t60));
    t62 = (t57 & t61);
    if (t62 != 0)
        goto LAB24;

LAB21:    if (t60 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t48) = 1;

LAB24:    memset(t45, 0, 8);
    t64 = (t48 + 4);
    t65 = *((unsigned int *)t64);
    t66 = (~(t65));
    t67 = *((unsigned int *)t48);
    t68 = (t67 & t66);
    t69 = (t68 & 1U);
    if (t69 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t64) != 0)
        goto LAB27;

LAB28:    t71 = (t45 + 4);
    t72 = *((unsigned int *)t45);
    t73 = *((unsigned int *)t71);
    t74 = (t72 || t73);
    if (t74 > 0)
        goto LAB29;

LAB30:    t89 = *((unsigned int *)t45);
    t90 = (~(t89));
    t91 = *((unsigned int *)t71);
    t92 = (t90 || t91);
    if (t92 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t71) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t45) > 0)
        goto LAB35;

LAB36:    memcpy(t44, t93, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t39, 32, t44, 32);
    goto LAB20;

LAB18:    memcpy(t3, t39, 8);
    goto LAB20;

LAB23:    t63 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t63) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t45) = 1;
    goto LAB28;

LAB27:    t70 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t70) = 1;
    goto LAB28;

LAB29:    t76 = ((char*)((ng5)));
    t77 = ((char*)((ng5)));
    t78 = (t0 + 1688U);
    t79 = *((char **)t78);
    t78 = (t0 + 1208U);
    t81 = *((char **)t78);
    memset(t80, 0, 8);
    t78 = (t80 + 4);
    t82 = (t81 + 4);
    t83 = *((unsigned int *)t81);
    t84 = (t83 >> 28);
    *((unsigned int *)t80) = t84;
    t85 = *((unsigned int *)t82);
    t86 = (t85 >> 28);
    *((unsigned int *)t78) = t86;
    t87 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t87 & 15U);
    t88 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t88 & 15U);
    xsi_vlogtype_concat(t75, 32, 32, 4U, t80, 4, t79, 26, t77, 1, t76, 1);
    goto LAB30;

LAB31:    t95 = (t0 + 1368U);
    t96 = *((char **)t95);
    t95 = ((char*)((ng6)));
    memset(t97, 0, 8);
    t98 = (t96 + 4);
    t99 = (t95 + 4);
    t100 = *((unsigned int *)t96);
    t101 = *((unsigned int *)t95);
    t102 = (t100 ^ t101);
    t103 = *((unsigned int *)t98);
    t104 = *((unsigned int *)t99);
    t105 = (t103 ^ t104);
    t106 = (t102 | t105);
    t107 = *((unsigned int *)t98);
    t108 = *((unsigned int *)t99);
    t109 = (t107 | t108);
    t110 = (~(t109));
    t111 = (t106 & t110);
    if (t111 != 0)
        goto LAB41;

LAB38:    if (t109 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t97) = 1;

LAB41:    memset(t94, 0, 8);
    t113 = (t97 + 4);
    t114 = *((unsigned int *)t113);
    t115 = (~(t114));
    t116 = *((unsigned int *)t97);
    t117 = (t116 & t115);
    t118 = (t117 & 1U);
    if (t118 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t113) != 0)
        goto LAB44;

LAB45:    t120 = (t94 + 4);
    t121 = *((unsigned int *)t94);
    t122 = *((unsigned int *)t120);
    t123 = (t121 || t122);
    if (t123 > 0)
        goto LAB46;

LAB47:    t126 = *((unsigned int *)t94);
    t127 = (~(t126));
    t128 = *((unsigned int *)t120);
    t129 = (t127 || t128);
    if (t129 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t120) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t94) > 0)
        goto LAB52;

LAB53:    memcpy(t93, t130, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t44, 32, t75, 32, t93, 32);
    goto LAB37;

LAB35:    memcpy(t44, t75, 8);
    goto LAB37;

LAB40:    t112 = (t97 + 4);
    *((unsigned int *)t97) = 1;
    *((unsigned int *)t112) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t94) = 1;
    goto LAB45;

LAB44:    t119 = (t94 + 4);
    *((unsigned int *)t94) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB45;

LAB46:    t124 = (t0 + 1848U);
    t125 = *((char **)t124);
    goto LAB47;

LAB48:    t124 = (t0 + 1368U);
    t132 = *((char **)t124);
    t124 = ((char*)((ng5)));
    memset(t133, 0, 8);
    t134 = (t132 + 4);
    t135 = (t124 + 4);
    t136 = *((unsigned int *)t132);
    t137 = *((unsigned int *)t124);
    t138 = (t136 ^ t137);
    t139 = *((unsigned int *)t134);
    t140 = *((unsigned int *)t135);
    t141 = (t139 ^ t140);
    t142 = (t138 | t141);
    t143 = *((unsigned int *)t134);
    t144 = *((unsigned int *)t135);
    t145 = (t143 | t144);
    t146 = (~(t145));
    t147 = (t142 & t146);
    if (t147 != 0)
        goto LAB58;

LAB55:    if (t145 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t133) = 1;

LAB58:    memset(t131, 0, 8);
    t149 = (t133 + 4);
    t150 = *((unsigned int *)t149);
    t151 = (~(t150));
    t152 = *((unsigned int *)t133);
    t153 = (t152 & t151);
    t154 = (t153 & 1U);
    if (t154 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t149) != 0)
        goto LAB61;

LAB62:    t156 = (t131 + 4);
    t157 = *((unsigned int *)t131);
    t158 = *((unsigned int *)t156);
    t159 = (t157 || t158);
    if (t159 > 0)
        goto LAB63;

LAB64:    t163 = *((unsigned int *)t131);
    t164 = (~(t163));
    t165 = *((unsigned int *)t156);
    t166 = (t164 || t165);
    if (t166 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t156) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t131) > 0)
        goto LAB69;

LAB70:    memcpy(t130, t167, 8);

LAB71:    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t93, 32, t125, 32, t130, 32);
    goto LAB54;

LAB52:    memcpy(t93, t125, 8);
    goto LAB54;

LAB57:    t148 = (t133 + 4);
    *((unsigned int *)t133) = 1;
    *((unsigned int *)t148) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t131) = 1;
    goto LAB62;

LAB61:    t155 = (t131 + 4);
    *((unsigned int *)t131) = 1;
    *((unsigned int *)t155) = 1;
    goto LAB62;

LAB63:    t160 = (t0 + 1048U);
    t161 = *((char **)t160);
    t160 = ((char*)((ng2)));
    memset(t162, 0, 8);
    xsi_vlog_unsigned_add(t162, 32, t161, 32, t160, 32);
    goto LAB64;

LAB65:    t167 = ((char*)((ng7)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t130, 32, t162, 32, t167, 32);
    goto LAB71;

LAB69:    memcpy(t130, t162, 8);
    goto LAB71;

}

static void Cont_37_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 4056);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3912);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000004100587452_0757879789_init()
{
	static char *pe[] = {(void *)Cont_33_0,(void *)Cont_37_1};
	xsi_register_didat("work_m_00000000004100587452_0757879789", "isim/test_mips_isim_beh.exe.sim/work/m_00000000004100587452_0757879789.didat");
	xsi_register_executes(pe);
}
