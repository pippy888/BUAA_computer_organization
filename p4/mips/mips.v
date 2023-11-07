`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:53 10/29/2022 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
    

    wire ZERO;
    wire [5:0] Instruction_class;
    wire [5:0] func;
    wire MemRead;
    wire [1:0] MemtoReg;
    wire ALU_SRC;
    wire [1:0] RegDst;
    wire RegWrite;
    wire [3:0] ALUop;
    wire [1:0] NPCop;
    wire EXTop;
	 wire newsign;

    controller controller (
        .Instruction_class(Instruction_class), 
        .func(func), 
        .ZERO(ZERO), 
        .MemRead(MemRead), 
        .MemtoReg(MemtoReg), 
        .ALU_SRC(ALU_SRC), 
        .RegDst(RegDst), 
        .RegWrite(RegWrite), 
        .ALUop(ALUop), 
        .NPCop(NPCop), 
        .EXTop(EXTop),
		  .newsign(newsign)
    );

    datapath datapath (
        .clk(clk), 
        .reset(reset), 
        .MemtoReg(MemtoReg), 
        .MemRead(MemRead), 
        .ALU_SRC(ALU_SRC), 
        .ALUop(ALUop), 
        .RegDst(RegDst), 
        .NPCop(NPCop), 
        .RegWrite(RegWrite), 
        .EXTop(EXTop), 
        .Instruction_class(Instruction_class), 
        .func(func), 
        .ZERO(ZERO),
		  .newsign(newsign)
    );



endmodule