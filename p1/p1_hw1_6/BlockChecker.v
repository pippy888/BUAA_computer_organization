`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:31 10/05/2022 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );
    reg [255:0] bfr;
    reg [31:0] cnt;
	 reg valid;
    initial begin
        cnt = {32{1'b0}};
        bfr = " ";
		  valid = 1'b1;
    end
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            cnt <= {32{1'b0}};
            bfr <= " ";
				valid = 1'b1;
        end
        else begin
            bfr = (bfr<<8);
            if(in>="A"&&in<="Z")
				bfr[7:0] = in + 8'h20;
            else 
                bfr[7:0] = in;

            if(bfr[47:0] == " begin")
                cnt <= cnt + 1'b1;
            else if(bfr[55:8] == " begin" && bfr[7:0] != " ")
                cnt <= cnt - 1'b1;
            else if(bfr[31:0] == " end")
                cnt <= cnt - 1'b1;
            else if(bfr[39:8] == " end" && bfr[7:0] != " ")
                cnt <= cnt + 1'b1;
				else if(bfr[39:8] == " end" && bfr[7:0] == " " && cnt[31] == 1'b1)
					 valid = 1'b0;
            else 
                cnt <= cnt;
        end
    end

    assign result = ((cnt == 1'b0)&&(valid==1'b1))?1'b1:1'b0;


endmodule