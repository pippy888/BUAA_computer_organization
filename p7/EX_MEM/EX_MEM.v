`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:31 11/03/2022 
// Design Name: 
// Module Name:    EX_MEM 
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
module EX_MEM(
    input wire RegWrite_E,
    input wire MemRead_E,
	 input wire jal_E,
    input wire [3:0] MemtoReg_E,
    input wire [31:0] Read2_E,
    input wire [31:0] PC_E,
    input wire [31:0] PC8_E,
    input wire [31:0] ALUresult_E,
    input wire [4:0] Dst_E,
    input wire [1:0] Tnew_E,
	 input wire [31:0] Instruction_E,
    input wire clk,
    input wire reset,
	 input wire Req_M,
	 input wire Error_E,
	 input wire [4:0] ExcCode_E,
    output reg RegWrite_M,
    output reg [3:0] MemtoReg_M,
    output reg MemRead_M,
	 output reg jal_M,
    output reg [31:0] ALUresult_M,
    output reg [31:0] PC_M,
    output reg [31:0] PC8_M,
    output reg [31:0] Read2_M,
    output reg [4:0] Dst_M,
    output reg [1:0] Tnew_M,
	 output reg [31:0] Instruction_M,
	 output reg Error_E_M,
	 output reg [4:0] ExcCode_E_M,
	 
	 input wire eret_E,
	 output reg eret_M,
	 input wire mtc0_E,
	 output reg mtc0_M,
	 input wire BDIn_E,
	 output reg BDIn_M
    );
    
    initial begin
        RegWrite_M = 0;
        MemtoReg_M = 0;
        MemRead_M = 0;
        ALUresult_M = 0;
		  jal_M = 0;
        PC_M = 0;
        PC8_M = 0;
        Read2_M = 0;
        Dst_M = 0;
        Tnew_M = 0;
		  Instruction_M = 0;
		  Error_E_M = 0;
		  ExcCode_E_M = 0;
		  eret_M = 0;
		  mtc0_M = 0;
		  BDIn_M = 0;
    end

    always @(posedge clk) begin
        if(reset||Req_M) begin
            RegWrite_M <= 0;
            MemtoReg_M <= 0;
            MemRead_M <= 0;
            ALUresult_M <= 0;
            PC_M <= 0;
				jal_M <= 0;
            PC8_M <= 0;
            Read2_M <= 0;
            Dst_M <= 0;
            Tnew_M <= 0;
				Instruction_M <= 0;
				Error_E_M <= 0;
				ExcCode_E_M <= 0;
				eret_M <= 0;
				mtc0_M <= 0;
				BDIn_M <= 0;
        end
        else begin
            RegWrite_M <= RegWrite_E;
            MemtoReg_M <= MemtoReg_E;
            MemRead_M <= MemRead_E;
				jal_M  <= jal_E;
            ALUresult_M <= ALUresult_E;
            PC_M <= PC_E;
            PC8_M <= PC8_E;
            Read2_M <= Read2_E;
            Dst_M <= Dst_E;
            Tnew_M <= (Tnew_E == 2'b00) ? 2'b00 : (Tnew_E - 2'b01);
				Instruction_M <= Instruction_E;
				Error_E_M <= Error_E;
				ExcCode_E_M <= ExcCode_E;
				eret_M <= eret_E;
				mtc0_M <= mtc0_E;
				BDIn_M <= BDIn_E;
        end
    end

endmodule
