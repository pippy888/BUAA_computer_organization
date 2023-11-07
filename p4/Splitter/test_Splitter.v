`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:53:55 10/29/2022
// Design Name:   Splitter
// Module Name:   D:/verilogcode/p4/Splitter/test_Splitter.v
// Project Name:  Splitter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Splitter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_Splitter;

	// Inputs
	reg [31:0] Instruction;

	// Outputs
	wire [5:0] Instrcution_class;
	wire [5:0] func;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] move;
	wire [4:0] rd;
	wire [15:0] imm16;
	wire [26:0] imm26;
	wire [31:0] Instruction_trans;

	// Instantiate the Unit Under Test (UUT)
	Splitter uut (
		.Instruction(Instruction), 
		.Instrcution_class(Instrcution_class), 
		.func(func), 
		.rs(rs), 
		.rt(rt), 
		.move(move), 
		.rd(rd), 
		.imm16(imm16), 
		.imm26(imm26), 
		.Instruction_trans(Instruction_trans)
	);

	initial begin
		// Initialize Inputs
		Instruction = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

