`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:48:38 11/21/2022
// Design Name:   bitadder_safer
// Module Name:   D:/verilogcode/p5/bitadder/test_bitadder.v
// Project Name:  bitadder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bitadder_safer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bitadder;

	// Inputs
	reg [31:0] numin;

	// Outputs
	wire [5:0] numout;

	// Instantiate the Unit Under Test (UUT)
	bitadder_safer uut (
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

