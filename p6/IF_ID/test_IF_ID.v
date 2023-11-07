`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:50 11/06/2022
// Design Name:   IF_ID
// Module Name:   D:/verilogcode/p5/IF_ID/test_IF_ID.v
// Project Name:  IF_ID
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IF_ID
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_IF_ID;

	// Inputs
	reg [31:0] Instruction_F;
	reg [31:0] PC_F;
	reg clk;
	reg reset;
	reg En_D;

	// Outputs
	wire [31:0] PC_D;
	wire [31:0] Instruction_D;

	// Instantiate the Unit Under Test (UUT)
	IF_ID uut (
		.Instruction_F(Instruction_F), 
		.PC_F(PC_F), 
		.clk(clk), 
		.reset(reset), 
		.En_D(En_D), 
		.PC_D(PC_D), 
		.Instruction_D(Instruction_D)
	);

	initial begin
		// Initialize Inputs
		Instruction_F = 0;
		PC_F = 0;
		clk = 0;
		reset = 0;
		En_D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

