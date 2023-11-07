`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:31:37 10/28/2022 
// Design Name: 
// Module Name:    controller 
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
module controller(
    input [5:0] Instruction_class,
    input [5:0] func,
    input ZERO,
    output MemRead,
    output [1:0] MemtoReg,
    output ALU_SRC,
    output [1:0] RegDst,
    output RegWrite,
    output [3:0] ALUop,
    output [1:0] NPCop,
    output EXTop,
	 output newsign
    );
    
    wire addu,subu,sw,lw,ori,lui,jal,beq,jr,newin;

    AND_control and1(
        .Instruction_class(Instruction_class),
        .func(func),
        .addu(addu),
        .subu(subu),
        .sw(sw),
        .lw(lw),
        .ori(ori),
        .lui(lui),
        .jal(jal),
        .beq(beq),
        .jr(jr),
		  .newin(newin)
        );
    OR or1(
        .addu(addu),
        .subu(subu),
        .sw(sw),
        .lw(lw),
        .ori(ori),
        .lui(lui),
        .jal(jal),
        .beq(beq),
        .jr(jr),
		  .newin(newin),
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
endmodule
