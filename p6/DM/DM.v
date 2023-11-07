`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:00:28 11/06/2022 
// Design Name: 
// Module Name:    DM 
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
`define DM_MAXSIZE 3072
module DM(
    input [31:0] ALUresult,
    input [31:0] Read2,
    input MemRead,
    input reset,
    input clk,
    input [3:0] MemtoReg,
	 input [31:0]PC,
    output [31:0] MemOutput
    );

    integer i;
    reg [9:0] addr;
    //reg [31:0] MemOutput;
    reg [31:0] dm [`DM_MAXSIZE-1:0];//DM_MAXSIZE == 1024
	 initial begin
		for(i=0;i<`DM_MAXSIZE;i=i+1) begin
				dm [i] = 32'b0;
		end
	 end
    assign MemOutput = dm[ALUresult[13:2]];

        always @(posedge clk) begin
            if(reset) begin
                for(i=0;i<`DM_MAXSIZE;i=i+1) begin
                    dm[i] <= 0;
                end
            end
            else if(MemRead) begin
                dm[ALUresult[13:2]] <= Read2;
                $display("%d@%h: *%h <= %h",$time,PC,ALUresult,Read2);
            end  
        end
endmodule


