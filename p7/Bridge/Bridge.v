`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:11 11/24/2022 
// Design Name: 
// Module Name:    Bridge 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`default_nettype none
module Bridge(
    input wire [31:0] Addr_Bridge,
    input wire [31:0] IM_Read,
    input wire [31:0] DM_Read,
    input wire [31:0] TC0_Read,
    input wire [31:0] TC1_Read,
    input wire [3:0] cpu_m_data_byteen,
    input wire IRQ0,
    input wire IRQ1,
    input wire Interrupt,
    output wire TC0_RegWrite,
    output wire TC1_RegWrite,
    output wire [3:0] bridge_m_data_byteen,
    output wire [5:0] HWInt,
    output wire [31:0] Bridge_Read
    );
	 
	 assign HWInt = {3'h0,Interrupt,IRQ1,IRQ0};
	 
	 wire Point_IM,Point_DM,Point_TC0,Point_TC1;
	 
	 assign Point_DM = (Addr_Bridge >= 32'h0000_0000) && (Addr_Bridge <= 32'h0000_2fff);
	 assign Point_IM = (Addr_Bridge >= 32'h0000_3000) && (Addr_Bridge <= 32'h0000_6fff);
	 assign Point_TC0 = (Addr_Bridge >= 32'h0000_7f00) && (Addr_Bridge <= 32'h0000_7f0b);
	 assign Point_TC1 = (Addr_Bridge >= 32'h0000_7f10) && (Addr_Bridge <= 32'h0000_7f1b);
	 
	 assign Bridge_Read = Point_IM ? IM_Read :
									Point_DM ? DM_Read :
									Point_TC0 ? TC0_Read :
									Point_TC1 ? TC1_Read :
									0 ;
	 

	 assign bridge_m_data_byteen = Point_DM ? cpu_m_data_byteen : 0;//这个信号专门用于DM的写入
	 assign TC0_RegWrite = Point_TC0 && (|cpu_m_data_byteen);
	 assign TC1_RegWrite = Point_TC1 && (|cpu_m_data_byteen);
	 
endmodule
