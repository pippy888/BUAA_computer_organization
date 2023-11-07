`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:57:28 10/27/2022 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input clk,
    input reset,
    input RegWrite,
    input [4:0] addr1,
    input [4:0] addr2,
    input [4:0] addr3,
    input [31:0] wd,
    input [31:0] WPC,
    output [31:0] read1,
    output [31:0] read2
    );

    integer i;
    reg [31:0] GRF [31:0];
	 initial begin
			for(i=0;i<32;i=i+1) begin
				GRF[i] = 32'b0;
			end
	 end
    always @(posedge clk) begin
        if(reset) begin
            for(i=0;i<32;i=i+1) begin
                GRF[i] <= 32'b0;
            end
        end
        else if(RegWrite == 1'b1)begin
            if(addr3!=5'b00000) begin
                GRF[addr3] <= wd;
                $display("@%h: $%d <= %h", WPC, addr3, wd);
            end
        end
    end

    assign read1 = GRF[addr1];
    assign read2 = GRF[addr2];
endmodule
