`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:39:09 11/06/2022
// Design Name:   EX_MEM
// Module Name:   D:/verilogcode/p5/EX_MEM/test_EX_MEM.v
// Project Name:  EX_MEM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EX_MEM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_EX_MEM;

	// Inputs
	reg RegWrite_E;
	reg MemRead_E;
	reg [3:0] MemtoReg_E;
	reg [31:0] Read2_E;
	reg [31:0] PC_E;
	reg [31:0] PC8_E;
	reg [31:0] ALUresult_E;
	reg [4:0] Dst_E;
	reg [1:0] Tnew_E;
	reg clk;
	reg reset;

	// Outputs
	wire RegWrite_M;
	wire [3:0] MemtoReg_M;
	wire MemRead_M;
	wire [31:0] ALUresult_M;
	wire [31:0] PC_M;
	wire [31:0] PC8_M;
	wire [31:0] Read2_M;
	wire [4:0] Dst_M;
	wire [1:0] Tnew_M;

	// Instantiate the Unit Under Test (UUT)
	EX_MEM uut (
		.RegWrite_E(RegWrite_E), 
		.MemRead_E(MemRead_E), 
		.MemtoReg_E(MemtoReg_E), 
		.Read2_E(Read2_E), 
		.PC_E(PC_E), 
		.PC8_E(PC8_E), 
		.ALUresult_E(ALUresult_E), 
		.Dst_E(Dst_E), 
		.Tnew_E(Tnew_E), 
		.clk(clk), 
		.reset(reset), 
		.RegWrite_M(RegWrite_M), 
		.MemtoReg_M(MemtoReg_M), 
		.MemRead_M(MemRead_M), 
		.ALUresult_M(ALUresult_M), 
		.PC_M(PC_M), 
		.PC8_M(PC8_M), 
		.Read2_M(Read2_M), 
		.Dst_M(Dst_M), 
		.Tnew_M(Tnew_M)
	);

	initial begin
		// Initialize Inputs
		RegWrite_E = 0;
		MemRead_E = 0;
		MemtoReg_E = 0;
		Read2_E = 0;
		PC_E = 0;
		PC8_E = 0;
		ALUresult_E = 0;
		Dst_E = 0;
		Tnew_E = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

