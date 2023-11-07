`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:14:53 11/25/2022
// Design Name:   Bridge
// Module Name:   D:/verilogcode/p7/Bridge/test_Bridge.v
// Project Name:  Bridge
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bridge
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_Bridge;

	// Inputs
	reg [31:0] Addr_Bridge;
	reg [31:0] IM_Read;
	reg [31:0] DM_Read;
	reg [31:0] TC0_Read;
	reg [31:0] TC1_Read;
	reg [3:0] cpu_m_data_byteen;
	reg IRQ0;
	reg IRQ1;
	reg Interrupt;

	// Outputs
	wire TC0_RegWrite;
	wire TC1_RegWrite;
	wire [3:0] bridge_m_data_byteen;
	wire [5:0] HWInt;
	wire [31:0] Bridge_Read;

	// Instantiate the Unit Under Test (UUT)
	Bridge uut (
		.Addr_Bridge(Addr_Bridge), 
		.IM_Read(IM_Read), 
		.DM_Read(DM_Read), 
		.TC0_Read(TC0_Read), 
		.TC1_Read(TC1_Read), 
		.cpu_m_data_byteen(cpu_m_data_byteen), 
		.IRQ0(IRQ0), 
		.IRQ1(IRQ1), 
		.Interrupt(Interrupt), 
		.TC0_RegWrite(TC0_RegWrite), 
		.TC1_RegWrite(TC1_RegWrite), 
		.bridge_m_data_byteen(bridge_m_data_byteen), 
		.HWInt(HWInt), 
		.Bridge_Read(Bridge_Read)
	);

	initial begin
		// Initialize Inputs
		Addr_Bridge = 0;
		IM_Read = 0;
		DM_Read = 0;
		TC0_Read = 0;
		TC1_Read = 0;
		cpu_m_data_byteen = 0;
		IRQ0 = 0;
		IRQ1 = 0;
		Interrupt = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

