`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:04:07 11/06/2022 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input wire [31:0] NPC,//经过逻辑计算后输入的指令地址
    input wire En_PC,
    output wire [31:0] PC,//保存在PC寄存器后，输出地址
    input wire clk,
    input wire reset
    );
    
    reg [31:0] PC_regsiter;
	 
	 initial begin
		  PC_regsiter = 32'h0000_3000 ;
	 end
    always @(posedge clk) begin
        if(reset == 1'b1) begin
            PC_regsiter <= 32'h0000_3000;
        end
        else if(En_PC) begin
            PC_regsiter <= NPC;
        end
        else begin
            PC_regsiter <= PC_regsiter;
        end
    end

    assign PC = PC_regsiter;

endmodule
