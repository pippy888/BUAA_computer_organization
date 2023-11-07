`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:55 11/03/2022 
// Design Name: 
// Module Name:    ID_EX 
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
module ID_EX(
    input wire RegWrite_D,
    input wire [3:0] ALU_SRC_D,
    input wire MemRead_D,
    input wire [3:0] ALUop_D,
    input wire [4:0] Rs_D,
    input wire [4:0] Rt_D,
    input wire [4:0] Dst_D,
    input wire [31:0] PC_D,
    input wire [3:0] MemtoReg_D,
    input wire [31:0] Read1_D,
    input wire [31:0] Read2_D,
    input wire [1:0] Tnew_D,
    input wire [31:0] Imm_D,
    input wire [31:0] PC8_D,
	 input wire [31:0] Instruction_D,
	 input wire jal,
    input wire clk,
	 input wire start_D,
	 input wire [5:0] MDUop_D,
	 input wire MDU_Instruction_D,
    input wire reset,
    input wire Reset_E,
    output reg RegWrite_E,
    output reg [3:0] ALU_SRC_E,
    output reg MemRead_E,
	 output reg jal_E,
    output reg [3:0] ALUop_E,
    output reg [4:0] Rs_E,
    output reg [4:0] Rt_E,
    output reg [4:0] Dst_E,
    output reg [31:0] PC_E,
    output reg [31:0] PC8_E,
    output reg [3:0] MemtoReg_E,
    output reg [31:0] Read1_E,
    output reg [31:0] Read2_E,
    output reg [1:0] Tnew_E,
    output reg [31:0] Imm_E,
	 output reg [31:0] Instruction_E,
	 output reg start_E,
	 output reg [5:0] MDUop_E,
	 output reg MDU_Instruction_E,
	 
	 input wire newsign_D,
	 output reg newsign_E,
	 input wire [4:0]Dst_D_New,
	 output reg [4:0]Dst_E_New
    );
    
    initial begin
        RegWrite_E = 0;
        ALU_SRC_E = 0;
        MemRead_E = 0;
        ALUop_E = 0;
        Rs_E = 0;
        Rt_E = 0;
        Dst_E = 0;
		  jal_E = 0;
        PC_E = 0;
        PC8_E = 0;
        MemtoReg_E = 0;
        Read1_E = 0;
        Read2_E = 0;
        Tnew_E = 0;
        Imm_E = 0;
		  Instruction_E = 0;
	     start_E = 0;
		  MDUop_E = 0;
		  MDU_Instruction_E = 0;
		  newsign_E = 0;
		  Dst_E_New = 0;
    end

    always @(posedge clk) begin
        if(reset || Reset_E) begin
            RegWrite_E <= 0;
            ALU_SRC_E <= 0;
            MemRead_E <= 0;
            ALUop_E <= 0;
            Rs_E <= 0;
            Rt_E <= 0;
            Dst_E <= 0;
				jal_E <= 0;
            PC_E <= 0;
            PC8_E <= 0;
            MemtoReg_E <= 0;
            Read1_E <= 0;
            Read2_E <= 0;
            Tnew_E <= 0;
            Imm_E <= 0; 
				Instruction_E <= 0;
				start_E <= 0;
				MDUop_E <= 0;
				MDU_Instruction_E <= 0;
				newsign_E <= 0;
				Dst_E_New <= 0;
        end

        else begin
            RegWrite_E <= RegWrite_D;
            ALU_SRC_E <= ALU_SRC_D;
            MemRead_E <= MemRead_D;
            ALUop_E <= ALUop_D;
            Rs_E <= Rs_D;
            Rt_E <= Rt_D;
            Dst_E <= Dst_D;
				jal_E <= jal;
            PC_E <= PC_D;
            PC8_E <= PC8_D;
            MemtoReg_E <= MemtoReg_D;
            Read1_E <= Read1_D;
            Read2_E <= Read2_D;
            Tnew_E <= Tnew_D;
            Imm_E <= Imm_D; 
				Instruction_E <= Instruction_D;
				start_E <= start_D;
				MDUop_E <= MDUop_D;
				MDU_Instruction_E <= MDU_Instruction_D;
				newsign_E <= newsign_D;
				Dst_E_New <= Dst_D_New;
        end
    end

endmodule

