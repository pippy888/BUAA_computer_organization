`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:12:58 11/06/2022
// Design Name:   CU
// Module Name:   D:/verilogcode/p5/CU/test_CU.v
// Project Name:  CU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_CU;

	// Inputs
	reg [5:0] Instruction_Class;
	reg [5:0] Func;
	reg CMP_Output;

	// Outputs
	wire [3:0] NPCop;
	wire RegWrite;
	wire [3:0] MemtoReg;
	wire MemRead;
	wire [3:0] RegDst;
	wire [3:0] ALU_SRC;
	wire [3:0] ALUop;
	wire EXTop;
	wire [1:0] Tuse_Rt_D;
	wire [1:0] Tuse_Rs_D;
	wire [1:0] Tnew_D;

	// Instantiate the Unit Under Test (UUT)
	CU uut (
		.Instruction_Class(Instruction_Class), 
		.Func(Func), 
		.CMP_Output(CMP_Output), 
		.NPCop(NPCop), 
		.RegWrite(RegWrite), 
		.MemtoReg(MemtoReg), 
		.MemRead(MemRead), 
		.RegDst(RegDst), 
		.ALU_SRC(ALU_SRC), 
		.ALUop(ALUop), 
		.EXTop(EXTop), 
		.Tuse_Rt_D(Tuse_Rt_D), 
		.Tuse_Rs_D(Tuse_Rs_D), 
		.Tnew_D(Tnew_D)
	);

	initial begin
		// Initialize Inputs
		Instruction_Class = 0;
		Func = 0;
		CMP_Output = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

