`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:56:05 10/05/2022
// Design Name:   p1_hw1_2
// Module Name:   D:/verilogcode/alu/p1_hw1_2tb.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: p1_hw1_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module p1_hw1_2tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALUOp;

	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	p1_hw1_2 uut (
		.A(A), 
		.B(B), 
		.ALUOp(ALUOp), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 32'b0010_0000_1010_0000_1000_1010_0010_0000;
		B = 32'b0001_0000_1000_0000_0000_1000_0001_0000;
		ALUOp = 3'b000;
		#2
		ALUOp = 3'b001;
		#2
		ALUOp = 3'b010;
		#2
		ALUOp = 3'b011;
		#2
		A = 32'b1010_0000_1010_0000_1000_1010_0010_0000;
		B = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		ALUOp = 3'b100;
		#2
		ALUOp = 3'b101;
		// Add stimulus here

	end
      
endmodule

