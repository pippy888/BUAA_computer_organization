`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:57 11/06/2022
// Design Name:   stall_forward
// Module Name:   D:/verilogcode/p5/stall_forward/test_stall_forward.v
// Project Name:  stall_forward
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stall_forward
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_stall_forward;

	// Inputs
	reg [4:0] Rs_D;
	reg [4:0] Rt_D;
	reg [4:0] Rs_E;
	reg [4:0] Rt_E;
	reg [4:0] Dst_E;
	reg [4:0] Dst_M;
	reg [4:0] Dst_W;
	reg RegWrite_E;
	reg RegWrite_M;
	reg RegWrite_W;
	reg MemRead_M;
	reg [1:0] Tnew_E;
	reg [1:0] Tnew_M;
	reg [1:0] Tuse_Rs_D;
	reg [1:0] Tuse_Rt_D;

	// Outputs
	wire En_PC;
	wire En_D;
	wire Reset_E;
	wire [1:0] MuxForward_Rs_D;
	wire [1:0] MuxForward_Rt_D;
	wire [1:0] MuxForward_Rs_E;
	wire [1:0] MuxForward_Rt_E;
	wire MuxForward_Rt_M;

	// Instantiate the Unit Under Test (UUT)
	stall_forward uut (
		.Rs_D(Rs_D), 
		.Rt_D(Rt_D), 
		.Rs_E(Rs_E), 
		.Rt_E(Rt_E), 
		.Dst_E(Dst_E), 
		.Dst_M(Dst_M), 
		.Dst_W(Dst_W), 
		.RegWrite_E(RegWrite_E), 
		.RegWrite_M(RegWrite_M), 
		.RegWrite_W(RegWrite_W), 
		.MemRead_M(MemRead_M), 
		.Tnew_E(Tnew_E), 
		.Tnew_M(Tnew_M), 
		.Tuse_Rs_D(Tuse_Rs_D), 
		.Tuse_Rt_D(Tuse_Rt_D), 
		.En_PC(En_PC), 
		.En_D(En_D), 
		.Reset_E(Reset_E), 
		.MuxForward_Rs_D(MuxForward_Rs_D), 
		.MuxForward_Rt_D(MuxForward_Rt_D), 
		.MuxForward_Rs_E(MuxForward_Rs_E), 
		.MuxForward_Rt_E(MuxForward_Rt_E), 
		.MuxForward_Rt_M(MuxForward_Rt_M)
	);

	initial begin
		// Initialize Inputs
		Rs_D = 0;
		Rt_D = 0;
		Rs_E = 0;
		Rt_E = 0;
		Dst_E = 0;
		Dst_M = 0;
		Dst_W = 0;
		RegWrite_E = 0;
		RegWrite_M = 0;
		RegWrite_W = 0;
		MemRead_M = 0;
		Tnew_E = 0;
		Tnew_M = 0;
		Tuse_Rs_D = 0;
		Tuse_Rt_D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

