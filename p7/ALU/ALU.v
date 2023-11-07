`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:00:02 11/06/2022 
// Design Name: 
// Module Name:    ALU 
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
`define R_Instruction 6'b000000
`define add 6'b100000//000000
`define addi 6'b001000
`define sub 6'b100010//000000
module ALU(
    input wire [31:0] SRCA,
    input wire [31:0] SRCB,
    input wire [3:0] ALUop,
    output wire [31:0] ALUresult,
	 output reg Error_E_Original,
	 output reg [4:0] ExcCode_E_Original,
	 input wire [31:0] Instruction_E
    );
	
    reg [31:0] result;
	 reg [32:0] Overflow_result;
	 wire [32:0] Overflow_SRCA = {SRCA[31],SRCA};
	 wire [32:0] Overflow_SRCB = {SRCB[31],SRCB};
	always@(*) begin
        case(ALUop)
        4'b0000:begin 
		  result = SRCA+SRCB;
		  Overflow_result = Overflow_SRCA + Overflow_SRCB;
			  if((Instruction_E[31:26] == `R_Instruction && Instruction_E[5:0] == `add) || (Instruction_E[31:26] == `addi))begin
				  Error_E_Original = (Overflow_result[32] == Overflow_result[31]) ? 1'b0 : 1'b1;
				  ExcCode_E_Original = (Overflow_result[32] == Overflow_result[31]) ? 5'h0 : 5'hc;
			  end
			  else if(Instruction_E[31:26] == 6'b100011 || Instruction_E[31:26] == 6'b100001 || Instruction_E[31:26] == 6'b100000)begin
				 Error_E_Original = (Overflow_result[32] == Overflow_result[31]) ? 1'b0 : 1'b1;
				 ExcCode_E_Original = (Overflow_result[32] == Overflow_result[31]) ? 5'h0 : 5'h4;
			  end
			  else if(Instruction_E[31:26] == 6'b101011 || Instruction_E[31:26] == 6'b101001 || Instruction_E[31:26] == 6'b101000)begin
				 Error_E_Original = (Overflow_result[32] == Overflow_result[31]) ? 1'b0 : 1'b1;
				 ExcCode_E_Original = (Overflow_result[32] == Overflow_result[31]) ? 5'h0 : 5'h5;
			  end
			  else begin
			   Error_E_Original = 0;
				ExcCode_E_Original = 0;
			  end
		  end
        4'b0001: begin 
		  result = SRCA-SRCB;
		  Overflow_result = Overflow_SRCA - Overflow_SRCB;
			  if(Instruction_E[31:26] == `R_Instruction && Instruction_E[5:0] == `sub) begin
				  Error_E_Original = (Overflow_result[32] == Overflow_result[31]) ? 1'b0 : 1'b1;
				  ExcCode_E_Original = (Overflow_result[32] == Overflow_result[31]) ? 5'h0 : 5'hc;
			  end
			  else begin
			   Error_E_Original = 0;
				ExcCode_E_Original = 0;
			  end
		  end
        4'b0010:begin 
		  result = SRCA|SRCB;
		  Error_E_Original = 0;
		  ExcCode_E_Original = 0;
		  end
        4'b0011:begin 
		  result = {SRCB[15:0],{16{1'b0}}}; 
		  Error_E_Original = 0;
		  ExcCode_E_Original = 0;
		  end
		  4'b0100: begin 
		  result = SRCA&SRCB;
		  Error_E_Original = 0;
		  ExcCode_E_Original = 0;
		  end
		  4'b0101: begin 
		  result = SRCA|SRCB;
		  Error_E_Original = 0;
		  ExcCode_E_Original = 0;
		  end
		  4'b0110: begin 
		  result = ($signed(SRCA)<$signed(SRCB)) ? 1'b1 : 1'b0;
		  Error_E_Original = 0;
		  ExcCode_E_Original = 0;
		  end
		  4'b0111: begin 
		  result = (SRCA<SRCB) ? 1'b1 : 1'b0;
		  Error_E_Original = 0;
		  ExcCode_E_Original = 0;
		  end
        default: begin 
		  result = SRCA+SRCB;
		  Error_E_Original = 0;
		  ExcCode_E_Original = 0;
		  end
        endcase // ALUop
    end

    assign ALUresult = result;
endmodule

/*
 always @(*) begin
		if(CMP1<CMP2) begin//ÎÞ·ûºÅ
			CMP_judgeBig[0] = 1'b1;
		end
		else begin
			CMP_judgeBig[0] = 1'b0;
		end
		
		if($signed(CMP1)<$signed(CMP2)) begin//ÎÞ·ûºÅ
			CMP_judgeBig[1] = 1'b1;
		end
		else begin
			CMP_judgeBig[1] = 1'b0;
		end
	 end
	 */