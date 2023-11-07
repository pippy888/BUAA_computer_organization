`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:55:49 11/03/2022 
// Design Name: 
// Module Name:    MEM_WB 
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
module MEM_WB(
    input wire RegWrite_M,
    input wire [3:0] MemtoReg_M,
    input wire [31:0] PC_M,
    input wire [31:0] PC8_M,
    input wire [31:0] ALUresult_M,
    input wire [31:0] MemOutput_M,
    input wire [4:0] Dst_M,
    input wire clk,
    input wire reset,
	 input wire Req,
	 input wire [31:0] Instruction_M,
    output reg RegWrite_W,
    output reg [3:0] MemtoReg_W,
    output reg [31:0] PC_W,
    output reg [31:0] PC8_W,
    output reg [31:0] ALUresult_W,
    output reg [4:0] Dst_W,
    output reg [31:0] MemOutput_W,
	 output reg [31:0] Instruction_W
    );//已经不需要Tnew了 因为暂停只存在E和M，W无论如何都可以转发
    
    initial begin
        RegWrite_W = 0;
        MemtoReg_W = 0;
        PC_W = 0;
        PC8_W = 0;
        ALUresult_W = 0;
        MemOutput_W = 0;
        Dst_W = 0;
		  Instruction_W = 0;
    end

    always @(posedge clk) begin
        if(reset||Req)  begin
            RegWrite_W <= 0;
            MemtoReg_W <= 0;
            PC_W <= 0;
            PC8_W <= 0;
            ALUresult_W <= 0;
            MemOutput_W <= 0;
            Dst_W <= 0;
				Instruction_W <= 0;
        end
        else begin
            RegWrite_W <= RegWrite_M;
            MemtoReg_W <= MemtoReg_M;
            PC_W <= PC_M;
            PC8_W <= PC8_M;
            ALUresult_W <= ALUresult_M;
				MemOutput_W <= MemOutput_M;
            Dst_W <= Dst_M;
				Instruction_W <= Instruction_M;
        end
    end



endmodule

