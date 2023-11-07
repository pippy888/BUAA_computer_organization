`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:31:20 11/06/2022
// Design Name:   NPC
// Module Name:   D:/verilogcode/p5/NPC/test_NPC.v
// Project Name:  NPC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NPC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_NPC;

	// Inputs
	reg [31:0] PC_D;
	reg [1:0] NPCop;
	reg [31:0] ExtImm;
	reg [25:0] Imm26;
	reg [31:0] RD1A;

	// Outputs
	wire [31:0] PC8;
	wire [31:0] NPC;

	// Instantiate the Unit Under Test (UUT)
	NPC uut (
		.PC_D(PC_D), 
		.NPCop(NPCop), 
		.ExtImm(ExtImm), 
		.Imm26(Imm26), 
		.RD1A(RD1A), 
		.PC8(PC8), 
		.NPC(NPC)
	);

	initial begin
		// Initialize Inputs
		PC_D = 0;
		NPCop = 0;
		ExtImm = 0;
		Imm26 = 0;
		RD1A = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

