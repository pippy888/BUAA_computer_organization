`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:18:09 11/06/2022
// Design Name:   MEM_WB
// Module Name:   D:/verilogcode/p5/MEM_WB/test_MEM_WB.v
// Project Name:  MEM_WB
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MEM_WB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MEM_WB;

	// Inputs
	reg RegWrite_M;
	reg [3:0] MemtoReg_M;
	reg [31:0] PC_M;
	reg [31:0] PC8_M;
	reg [31:0] ALUresult_M;
	reg [31:0] MemOutput_M;
	reg [4:0] Dst_M;
	reg clk;
	reg reset;

	// Outputs
	wire RegWrite_W;
	wire [3:0] MemtoReg_W;
	wire [31:0] PC_W;
	wire [31:0] PC8_W;
	wire [31:0] ALUresult_W;
	wire [4:0] Dst_W;
	wire [31:0] MemOutput_W;

	// Instantiate the Unit Under Test (UUT)
	MEM_WB uut (
		.RegWrite_M(RegWrite_M), 
		.MemtoReg_M(MemtoReg_M), 
		.PC_M(PC_M), 
		.PC8_M(PC8_M), 
		.ALUresult_M(ALUresult_M), 
		.MemOutput_M(MemOutput_M), 
		.Dst_M(Dst_M), 
		.clk(clk), 
		.reset(reset), 
		.RegWrite_W(RegWrite_W), 
		.MemtoReg_W(MemtoReg_W), 
		.PC_W(PC_W), 
		.PC8_W(PC8_W), 
		.ALUresult_W(ALUresult_W), 
		.Dst_W(Dst_W), 
		.MemOutput_W(MemOutput_W)
	);

	initial begin
		// Initialize Inputs
		RegWrite_M = 0;
		MemtoReg_M = 0;
		PC_M = 0;
		PC8_M = 0;
		ALUresult_M = 0;
		MemOutput_M = 0;
		Dst_M = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

