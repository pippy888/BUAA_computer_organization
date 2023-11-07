`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:02:13 11/06/2022
// Design Name:   CMP
// Module Name:   D:/verilogcode/p5/CMP/test_CMP.v
// Project Name:  CMP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CMP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_CMP;

	// Inputs
	reg [31:0] CMP1;
	reg [31:0] CMP2;

	// Outputs
	wire CMP_Output;

	// Instantiate the Unit Under Test (UUT)
	CMP uut (
		.CMP1(CMP1), 
		.CMP2(CMP2), 
		.CMP_Output(CMP_Output)
	);

	initial begin
		// Initialize Inputs
		CMP1 = 0;
		CMP2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

