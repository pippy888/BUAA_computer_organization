`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:56 10/28/2022 
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
module PC(
    input [31:0] NPC,//经过逻辑计算后输入的指令地址
    output[31:0] PC,//保存在PC寄存器后，输出地址
    input clk,
    input reset
    );
    
    reg [31:0] PC_regsiter;
	 
	 initial begin
		  PC_regsiter = 32'h0000_3000 ;
	 end
    always @(posedge clk) begin
        if(reset == 1'b1) begin
            PC_regsiter <= 32'h0000_3000;
        end
        else begin
            PC_regsiter <= NPC;
        end
    end

    assign PC = PC_regsiter;

endmodule
