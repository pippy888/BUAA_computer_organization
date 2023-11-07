`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:38 11/06/2022 
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
    input wire clk,
    input wire reset,
    input wire RegWrite,
    input wire [4:0] Addr1,
    input wire [4:0] Addr2,
    input wire [4:0] Addr3,
    input wire [31:0] Wd,
    input wire [31:0] PC_D,
    output wire [31:0] Read1,
    output wire [31:0] Read2
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
            if(Addr3!=5'b00000) begin
                GRF[Addr3] <= Wd;
                //$display("%d@%h: $%d <= %h", $time,PC_D, Addr3, Wd);
            end
        end
    end

    assign Read1 = (Addr3 == Addr1 && Addr3 != 0 && RegWrite == 1'b1) ? Wd 
                                                       : (Addr1 != 0) ? GRF[Addr1] 
                                                                      : 0;
    assign Read2 = (Addr3 == Addr2 && Addr3 != 0 && RegWrite == 1'b1) ? Wd 
                                                       : (Addr2 != 0) ? GRF[Addr2] 
                                                                      : 0;
endmodule
