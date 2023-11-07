`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:15 11/06/2022
// Design Name:   ID_EX
// Module Name:   D:/verilogcode/p5/ID_EX/test_ID_EX.v
// Project Name:  ID_EX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ID_EX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ID_EX;

	// Inputs
	reg RegWrite_D;
	reg [3:0] ALU_SRC_D;
	reg MemRead_D;
	reg [3:0] ALUop_D;
	reg [4:0] Rs_D;
	reg [4:0] Rt_D;
	reg [4:0] Dst_D;
	reg [31:0] PC_D;
	reg [3:0] MemtoReg_D;
	reg [31:0] Read1_D;
	reg [31:0] Read2_D;
	reg [1:0] Tnew_D;
	reg [31:0] Imm_D;
	reg [31:0] PC8_D;
	reg clk;
	reg reset;
	reg Reset_E;

	// Outputs
	wire RegWrite_E;
	wire [3:0] ALU_SRC_E;
	wire MemRead_E;
	wire [3:0] ALUop_E;
	wire [4:0] Rs_E;
	wire [4:0] Rt_E;
	wire [4:0] Dst_E;
	wire [31:0] PC_E;
	wire [31:0] PC8_E;
	wire [3:0] MemtoReg_E;
	wire [31:0] Read1_E;
	wire [31:0] Read2_E;
	wire [1:0] Tnew_E;
	wire [31:0] Imm_E;

	// Instantiate the Unit Under Test (UUT)
	ID_EX uut (
		.RegWrite_D(RegWrite_D), 
		.ALU_SRC_D(ALU_SRC_D), 
		.MemRead_D(MemRead_D), 
		.ALUop_D(ALUop_D), 
		.Rs_D(Rs_D), 
		.Rt_D(Rt_D), 
		.Dst_D(Dst_D), 
		.PC_D(PC_D), 
		.MemtoReg_D(MemtoReg_D), 
		.Read1_D(Read1_D), 
		.Read2_D(Read2_D), 
		.Tnew_D(Tnew_D), 
		.Imm_D(Imm_D), 
		.PC8_D(PC8_D), 
		.clk(clk), 
		.reset(reset), 
		.Reset_E(Reset_E), 
		.RegWrite_E(RegWrite_E), 
		.ALU_SRC_E(ALU_SRC_E), 
		.MemRead_E(MemRead_E), 
		.ALUop_E(ALUop_E), 
		.Rs_E(Rs_E), 
		.Rt_E(Rt_E), 
		.Dst_E(Dst_E), 
		.PC_E(PC_E), 
		.PC8_E(PC8_E), 
		.MemtoReg_E(MemtoReg_E), 
		.Read1_E(Read1_E), 
		.Read2_E(Read2_E), 
		.Tnew_E(Tnew_E), 
		.Imm_E(Imm_E)
	);

	initial begin
		// Initialize Inputs
		RegWrite_D = 0;
		ALU_SRC_D = 0;
		MemRead_D = 0;
		ALUop_D = 0;
		Rs_D = 0;
		Rt_D = 0;
		Dst_D = 0;
		PC_D = 0;
		MemtoReg_D = 0;
		Read1_D = 0;
		Read2_D = 0;
		Tnew_D = 0;
		Imm_D = 0;
		PC8_D = 0;
		clk = 0;
		reset = 0;
		Reset_E = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

