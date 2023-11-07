`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:16 10/05/2022 
// Design Name: 
// Module Name:    expr 
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
module expr(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
    reg [1:0] state;
    always @(posedge clr or posedge clk) begin
        if(clr)
            state <= 2'b00;
        else begin
            case (state)
            2'b00:state <= (in<="9"&&in>="0")?2'b01:2'b11;
            2'b01:state <= (in == "+"||in == "*")?2'b10:2'b11;
            2'b10:state <= (in<="9"&&in>="0")?2'b01:2'b11;
            2'b11:state <= state;
                default : state <= 2'b00;
            endcase
        end
    end
    assign out = (state == 2'b01)?1'b1:1'b0;
endmodule
