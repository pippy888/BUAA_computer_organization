`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:22 11/03/2022 
// Design Name: 
// Module Name:    stall_forward 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module stall_forward(
    input wire [4:0] Rs_D,
    input wire [4:0] Rt_D,
    input wire [4:0] Rs_E,
    input wire [4:0] Rt_E,
    input wire [4:0] Dst_E,
    input wire [4:0] Dst_M,
    input wire [4:0] Dst_W,
    input wire RegWrite_E,
    input wire RegWrite_M,
    input wire RegWrite_W,
    input wire MemRead_M,
    input wire [1:0] Tnew_E,
    input wire [1:0] Tnew_M,
    input wire [1:0] Tuse_Rs_D,
    input wire [1:0] Tuse_Rt_D,
	 //添加jal
	 input wire jal_E,
	 input wire jal_M,
	 
	 input wire busy,
	 input wire MDU_Instruction,
	 //只要两个就可以了
    output wire En_PC,
    output wire En_D,
    output wire Reset_E,
    output wire [3:0] MuxForward_Rs_D,
    output wire [3:0] MuxForward_Rt_D,
    output wire [3:0] MuxForward_Rs_E,
    output wire [3:0] MuxForward_Rt_E,
    output wire MuxForward_Rt_M,
	 
	 input wire newsign_D,
	 input wire newsign_E,
	 input wire newsign_M,
	 input wire newsign_W,
	 input wire [4:0] Dst_E_New
    );
    
    wire C_B_DM_Rs;
    wire C_B_DM_Rt;
    wire C_B_DW_Rs;
    wire C_B_DW_Rt;
    wire C_B_EM_Rs;
    wire C_B_EM_Rt;
    wire C_B_EW_Rs;
    wire C_B_EW_Rt;
    wire C_B_MW_Rt;

    wire C_B_D;//暂停
    wire C_B_D_DE;//与E冲突
    wire C_B_D_DM;//与M冲突
    //转发区
    assign C_B_DM_Rs = (Rs_D == Dst_M && Rs_D != 0 && RegWrite_M);
    assign C_B_DM_Rt = (Rt_D == Dst_M && Rt_D != 0 && RegWrite_M);
    assign C_B_DW_Rs = (Rs_D == Dst_W && Rs_D != 0 && RegWrite_W);
    assign C_B_DW_Rt = (Rt_D == Dst_W && Rt_D != 0 && RegWrite_W);
    assign C_B_EM_Rs = (Rs_E == Dst_M && Rs_E != 0 && RegWrite_M);
    assign C_B_EM_Rt = (Rt_E == Dst_M && Rt_E != 0 && RegWrite_M);
    assign C_B_EW_Rs = (Rs_E == Dst_W && Rs_E != 0 && RegWrite_W);
    assign C_B_EW_Rt = (Rt_E == Dst_W && Rt_E != 0 && RegWrite_W);
    assign C_B_MW_Rt = (Dst_M == Dst_W && Dst_M != 0 && MemRead_M && RegWrite_W);//lw后面跟着sw
    //注意，这里的Dst_M不是写入GRF的地址，这是针对sw指令的输入值GRF地址，其与lw一样，所以保留了格式
    //暂停区
    assign C_B_D_DE = (Rs_D == Dst_E && Rs_D != 0 && RegWrite_E) || (Rt_D == Dst_E && Rt_D != 0 && RegWrite_E);
    assign C_B_D_DM = (C_B_DM_Rs || C_B_DM_Rt);
    //注意W区不用判断，数据已经产生，肯定可以转发解决。
    //转发MUX信号：
    assign MuxForward_Rs_D = (jal_E == 1'b1 && (Rs_D == Dst_E && Rs_D != 0 && RegWrite_E)) ? 4'b0100 :
									  (jal_M == 1'b1 && (Rs_D == Dst_M && Rs_D != 0 && RegWrite_M)) ? 4'b0011 :
									  (C_B_DM_Rs == 1'b1) ? 4'b0010 :
                             (C_B_DW_Rs == 1'b1) ? 4'b0001 :
                             4'b0000;
    assign MuxForward_Rt_D = (jal_E == 1'b1 && (Rt_D == Dst_E && Rt_D != 0 && RegWrite_E)) ? 4'b0100 :
									  (jal_M == 1'b1 && (Rt_D == Dst_M && Rt_D != 0 && RegWrite_M)) ? 4'b0011 :
									  (C_B_DM_Rt == 1'b1) ? 4'b0010 :
                             (C_B_DW_Rt == 1'b1) ? 4'b0001 :
                             4'b0000;
    assign MuxForward_Rs_E = (jal_M == 1'b1 && (Rs_E == Dst_M && Rs_E != 0 && RegWrite_M)) ? 4'b0011 :
									  (C_B_EM_Rs == 1'b1) ? 4'b0010 :
                             (C_B_EW_Rs == 1'b1) ? 4'b0001 :
                             4'b0000;
    assign MuxForward_Rt_E = (jal_M == 1'b1 && (Rt_E == Dst_M && Rt_E != 0 && RegWrite_M)) ? 4'b0011 :
									  (C_B_EM_Rt == 1'b1) ? 4'b0010 :
                             (C_B_EW_Rt == 1'b1) ? 4'b0001 :
                             4'b0000;
    assign MuxForward_Rt_M = (C_B_MW_Rt == 1'b1) ? 1'b1  : 1'b0;

    assign C_B_D = ((Tuse_Rs_D < Tnew_E) && (((Rs_D == Dst_E) || (((newsign_E)&&(Dst_E_New == Rs_D))||(!newsign_E))) && Rs_D != 0 && RegWrite_E)) ||
                   ((Tuse_Rt_D < Tnew_E) && (((Rt_D == Dst_E) || (((newsign_E)&&(Dst_E_New == Rt_D))||(!newsign_E))) && Rt_D != 0 && RegWrite_E)) ||
                   (Tuse_Rs_D < Tnew_M) && (Rs_D == Dst_M && Rs_D != 0 && RegWrite_M) ||
                   (Tuse_Rt_D < Tnew_M) && (Rt_D == Dst_M && Rt_D != 0 && RegWrite_M) ;
    //该暂停就会暂停，转发尽情全速转发，不要担心来不及
    assign En_PC = ! C_B_D && !(busy && MDU_Instruction);
    assign En_D  = ! C_B_D && !(busy && MDU_Instruction);
    assign Reset_E = C_B_D || (busy && MDU_Instruction);
endmodule