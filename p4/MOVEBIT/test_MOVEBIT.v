`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:58:39 11/08/2022
// Design Name:   MOVEBIT
// Module Name:   D:/verilogcode/p4/MOVEBIT/test_MOVEBIT.v
// Project Name:  MOVEBIT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MOVEBIT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MOVEBIT;

	// Inputs
	reg [31:0] read1;
	reg [15:0] imm16;

	// Outputs
	wire [31:0] moveout;

	// Instantiate the Unit Under Test (UUT)
	MOVEBIT uut (
		.read1(read1), 
		.imm16(imm16), 
		.moveout(moveout)
	);
	initial begin
		// Initialize Inputs
		read1 = 0;
		imm16 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		read1 = 32'h0fffffff;
		imm16 = 0;
		#2
      read1 = 32'h0fffffff;
		imm16 = 16'b0000111000001111;
		#2
      read1 = 32'h0fffffff;
		imm16 = 16'b0000000000001111;
		// Add stimulus here

	end
      
endmodule

