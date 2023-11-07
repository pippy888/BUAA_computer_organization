`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:44 10/29/2022
// Design Name:   datapath
// Module Name:   D:/verilogcode/p4/datapath/test_datapath.v
// Project Name:  datapath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_datapath;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0] MemtoReg;
	reg MemRead;
	reg ALU_SRC;
	reg [3:0] ALUop;
	reg [1:0] RegDst;
	reg [1:0] NPCop;
	reg RegWrite;
	reg Extop;

	// Outputs
	wire [5:0] Instruction_class;
	wire [5:0] func;
	wire ZERO;

	// Instantiate the Unit Under Test (UUT)
	datapath uut (
		.clk(clk), 
		.reset(reset), 
		.MemtoReg(MemtoReg), 
		.MemRead(MemRead), 
		.ALU_SRC(ALU_SRC), 
		.ALUop(ALUop), 
		.RegDst(RegDst), 
		.NPCop(NPCop), 
		.RegWrite(RegWrite), 
		.Extop(Extop), 
		.Instruction_class(Instruction_class), 
		.func(func), 
		.ZERO(ZERO)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		MemtoReg = 0;
		MemRead = 0;
		ALU_SRC = 0;
		ALUop = 0;
		RegDst = 0;
		NPCop = 0;
		RegWrite = 0;
		Extop = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

