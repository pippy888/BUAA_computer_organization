`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:07 11/09/2022
// Design Name:   lowbit
// Module Name:   D:/verilogcode/p4/lowbit/test_lowbit.v
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
		numin = 1;
		#1
		numin = 2;
		#1
		numin = 3;
		#1
		numin = 4;
		#1
		numin = 5;
		#1
		numin = 6;
		#1
		numin = 32'hffffffff;
		#1
		numin = 32'hfffffffe;
		#1
		numin = 32'hfffffffd;
		#1
		numin = 32'hfffffffc;
		#1
		numin = 32'hfffffffb;
		#1
		numin = 32'hfffffffa;
		

        
		// Add stimulus here

	end
      
endmodule

