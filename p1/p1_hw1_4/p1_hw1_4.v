`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:10 10/05/2022 
// Design Name: 
// Module Name:    p1_hw1_4 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output Overflow
    );
    reg [2:0] state;
    reg outputreg;

    always @(posedge Clk) begin
       if(Reset) begin
           state <= 3'b000;
           outputreg <= 1'b0;
       end 
       else begin
           if(En == 1'b1) begin
               if(state == 3'b000)
                state <= 3'b001;
                else if(state == 3'b001)
                    state<= 3'b011;
                else if(state == 3'b011)
                    state <= 3'b010;
                else if(state == 3'b010)
                    state <= 3'b110;
                else if(state == 3'b110)
                    state <= 3'b111;
                else if(state == 3'b111)
                    state <= 3'b101;
                else if(state == 3'b101)
                    state <= 3'b100;
                else 
                    begin
                        state <= 3'b000;
                        outputreg <= 1'b1;
                    end
           end
           else begin
               state <= state;
           end
       end
    end
    assign Overflow = outputreg;
    assign Output = state;
endmodule