`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:13:20 10/29/2022
// Design Name:   Ext
// Module Name:   D:/verilogcode/p4/Ext/test_Ext.v
// Project Name:  Ext
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_Ext;

	// Inputs
	reg EXTop;
	reg [15:0] Imm;

	// Outputs
	wire [15:0] ExtImm;

	// Instantiate the Unit Under Test (UUT)
	Ext uut (
		.EXTop(EXTop), 
		.Imm(Imm), 
		.ExtImm(ExtImm)
	);

	initial begin
		// Initialize Inputs
		EXTop = 0;
		Imm = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

