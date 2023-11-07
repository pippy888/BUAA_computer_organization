`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:57 11/03/2022 
// Design Name: 
// Module Name:    IF_ID 
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
module IF_ID(
    input wire [31:0] Instruction_F,
    input wire [31:0] PC_F,
    input wire clk,
    input wire reset,
	 input wire Req_D,
    input wire En_D,
	 input wire Error_F,
	 input wire BDIn_F,
	 input wire [4:0] ExcCode_F,
    output reg [31:0] PC_D,
    output reg [31:0] Instruction_D,
	 output reg Error_F_D,
	 output reg [4:0] ExcCode_F_D,
	 output reg BDIn_D,
	 input wire eret_D,
	 input wire [31:0] EPC
    );
  //D级是eret的时候也需要流水原PC  
    always @(posedge clk) begin
        if(reset||Req_D) begin
            PC_D <= 0;
            Instruction_D <= 0;
				Error_F_D <= 0;
				ExcCode_F_D <= 0;
				BDIn_D <= 0;
        end
		  /*
		  else if(eret_D) begin
				PC_D <= EPC;
				Instruction_D <= 0;
				Error_F_D <= 0;
				ExcCode_F_D <= 0;
				BDIn_D <= 0;
		  end
		  */
        else if(En_D) begin
            PC_D <= PC_F;
            Instruction_D <= Instruction_F;
				Error_F_D <= Error_F;
				ExcCode_F_D <= ExcCode_F;
				BDIn_D <= BDIn_F;
        end
        else begin
            PC_D <= PC_D;
            Instruction_D <= Instruction_D;
				Error_F_D <= Error_F_D;
				ExcCode_F_D <= ExcCode_F_D;
				BDIn_D <= BDIn_D;
        end
    end
	 
	 

endmodule


