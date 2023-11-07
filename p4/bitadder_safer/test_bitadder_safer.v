`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:32:31 11/09/2022
// Design Name:   bitadder_safer
// Module Name:   D:/verilogcode/p4/bitadder_safer/test_bitadder_safer.v
// Project Name:  bitadder_safer
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

module test_bitadder_safer;

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
      numin = 32'hffffffff;
		#1
		numin = 32'hffffefff;
		#1
		numin = 32'hffffff00;
		#1
		numin = 32'hff000000;
		
		// Add stimulus here

	end
      
endmodule

