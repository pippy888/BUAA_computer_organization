`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:15:48 10/06/2022
// Design Name:   BlockChecker
// Module Name:   D:/verilogcode/p1/p1_hw1_6/p1_hw1_6tb.v
// Project Name:  p1_hw1_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module p1_hw1_6tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);
	always #1 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		in = " ";

		// Wait 100 ns for global reset to finish
		#101;
      in = "B";
		#2
		in = "e";
		#2
		in = "g";
		#2
		in = "I";
		#2
		in = "N";
		#2
		in = "B";
		#2
		in = "e";
		#2
		in = "g";
		#2
		in = "I";
		#2
		in = "N";
		#2
		in = " ";
		#2
		in = "B";
		#2
		in = "e";
		#2
		in = "g";
		#2
		in = "I";
		#2
		in = "N";
		#2
		in = " ";
		#2
		in = "e";
		#2
		in = "g";
		#2
		in = "I";
		#2
		in = "N";
		#2
		in = "e";
		#2
		in = "n";
		#2
		in = "d";
		#2
		in = " ";
		#2
		in = "e";
		#2
		in = "n";
		#2
		in = "D";
		#2
		in = " ";




		// Add stimulus here

	end
      
endmodule

