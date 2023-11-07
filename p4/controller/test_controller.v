`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:44:03 10/29/2022
// Design Name:   controller
// Module Name:   D:/verilogcode/p4/controller/test_controller.v
// Project Name:  controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_controller;

	// Inputs
	reg [5:0] Instruction_class;
	reg [5:0] func;
	reg ZERO;

	// Outputs
	wire MemRead;
	wire [1:0] MemtoReg;
	wire ALU_SRC;
	wire [1:0] RegDst;
	wire RegWrite;
	wire [3:0] ALUop;
	wire [1:0] NPCop;
	wire EXTop;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
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
		.EXTop(EXTop)
	);

	initial begin
		// Initialize Inputs
		Instruction_class = 0;
		func = 0;
		ZERO = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

