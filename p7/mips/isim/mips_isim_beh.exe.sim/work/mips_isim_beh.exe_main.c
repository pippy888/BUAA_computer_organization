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
    work_m_00000000000797328197_1733832700_init();
    work_m_00000000001732689990_0345418465_init();
    work_m_00000000003196587456_4066630463_init();
    work_m_00000000002263274286_1903363227_init();
    work_m_00000000001632229537_0969970992_init();
    work_m_00000000002823270690_1621229167_init();
    work_m_00000000004213712837_1653818764_init();
    work_m_00000000001345398886_1785967555_init();
    work_m_00000000001422247883_0757879789_init();
    work_m_00000000000225646573_2841360810_init();
    work_m_00000000000412704914_1579609468_init();
    work_m_00000000000453249373_0103510313_init();
    work_m_00000000000781952427_0295725576_init();
    work_m_00000000003411111788_4111503280_init();
    work_m_00000000002933781001_0886308060_init();
    work_m_00000000001361650730_4024466370_init();
    work_m_00000000002541943394_1162887250_init();
    work_m_00000000003835752319_1362510074_init();
    work_m_00000000002535226714_1333799293_init();
    work_m_00000000003806938089_3975733304_init();
    work_m_00000000002678258592_4041528026_init();
    work_m_00000000002378881114_2520395732_init();
    work_m_00000000003252008992_1125161478_init();
    work_m_00000000001669042148_0156190743_init();
    work_m_00000000000563044049_0053799672_init();
    work_m_00000000002823654763_3877310806_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002823654763_3877310806");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}