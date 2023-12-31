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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002502935406_1733832700_init();
    work_m_00000000003435375683_0467708899_init();
    work_m_00000000003561441142_0345418465_init();
    work_m_00000000000030637582_4066630463_init();
    work_m_00000000000156196237_1903363227_init();
    work_m_00000000001632229537_0969970992_init();
    work_m_00000000001248335486_1621229167_init();
    work_m_00000000004213712837_1653818764_init();
    work_m_00000000001345398886_1785967555_init();
    work_m_00000000004100587452_0757879789_init();
    work_m_00000000000225646573_2841360810_init();
    work_m_00000000000412704914_1579609468_init();
    work_m_00000000004069881619_0103510313_init();
    work_m_00000000000781952427_0295725576_init();
    work_m_00000000001677935656_0886308060_init();
    work_m_00000000000076195227_4024466370_init();
    work_m_00000000002541943394_1162887250_init();
    work_m_00000000000730711613_2924402094_init();
    work_m_00000000001625369107_2520395732_init();
    work_m_00000000003252008992_1125161478_init();
    work_m_00000000002251286176_3877310806_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002251286176_3877310806");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
