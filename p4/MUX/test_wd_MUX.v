`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:22:11 10/29/2022
// Design Name:   MUX_wd
// Module Name:   D:/verilogcode/p4/MUX/test_wd_MUX.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_wd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_wd_MUX;

	// Inputs
	reg [31:0] AO;
	reg [31:0] MemData;
	reg [31:0] PC4;
	reg [1:0] MemtoReg;

	// Outputs
	wire [31:0] wd;

	// Instantiate the Unit Under Test (UUT)
	MUX_wd uut (
		.AO(AO), 
		.MemData(MemData), 
		.PC4(PC4), 
		.MemtoReg(MemtoReg), 
		.wd(wd)
	);

	initial begin
		// Initialize Inputs
		AO = 0;
		MemData = 0;
		PC4 = 0;
		MemtoReg = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

