`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:49:05 11/21/2022
// Design Name:   lowbit
// Module Name:   D:/verilogcode/p5/lowbit/test_lowbit.v
// Project Name:  lowbit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lowbit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_lowbit;

	// Inputs
	reg [31:0] numin;

	// Outputs
	wire [5:0] numout;

	// Instantiate the Unit Under Test (UUT)
	lowbit uut (
		.numin(numin), 
		.numout(numout)
	);

	initial begin
		// Initialize Inputs
		numin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

