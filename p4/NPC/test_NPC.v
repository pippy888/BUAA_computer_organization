`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:41:15 10/29/2022
// Design Name:   NPC
// Module Name:   D:/verilogcode/p4/NPC/test_NPC.v
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
	reg [31:0] PC;
	reg [1:0] NPCop;
	reg [31:0] imm16;
	reg [25:0] imm26;
	reg [31:0] RD1A;

	// Outputs
	wire [31:0] PC4;
	wire [31:0] NPC;

	// Instantiate the Unit Under Test (UUT)
	NPC uut (
		.PC(PC), 
		.NPCop(NPCop), 
		.imm16(imm16), 
		.imm26(imm26), 
		.RD1A(RD1A), 
		.PC4(PC4), 
		.NPC(NPC)
	);

	initial begin
		// Initialize Inputs
		PC = 0;
		NPCop = 0;
		imm16 = 0;
		imm26 = 0;
		RD1A = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

