`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:09:04 10/31/2022
// Design Name:   mips
// Module Name:   D:/verilogcode/p4/mips/test_mips.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mips;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);
	always #1 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100;
      reset = 0; 
		// Add stimulus here

	end
	
      
endmodule

