`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:44 11/09/2022 
// Design Name: 
// Module Name:    MDU 
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
`define mult 6'b011000
`define multu 6'b011001
`define div 6'b011010
`define divu 6'b011011
`define mfhi 6'b010000//读 到rd!!
`define mflo 6'b010010
`define mthi 6'b010001//写 rs的数据
`define mtlo 6'b010011

module MDU(
    input wire clk,
    input wire reset,
	 input wire [31:0] PC_E,
    input wire [31:0] MDU_num1,
    input wire [31:0] MDU_num2,
    input wire start,//要用id_ex的start
	 input wire [5:0] R_Instruction,
	 input wire [5:0] MDUop,
    output wire busy,
    output reg [31:0] HI,
    output reg [31:0] LO,
	 output reg [5:0] count
    );
	 
	 
	 //reg [5:0] count;
	 reg [31:0] HI_pre;
	 reg [31:0] LO_pre;
	 
	 initial begin
			count = 0;
			HI_pre = 0;
			LO_pre = 0;
			HI=0;
			LO=0;
	 end
	 
	 always @(posedge clk) begin
			if(reset) begin
				count = 0;
				HI_pre = 0;
				LO_pre = 0;
				HI=0;
				LO=0;
			end
			else if(start == 1'b1 && R_Instruction == 6'b000000) begin
				case(MDUop)
					`mult:begin
								{HI_pre,LO_pre}<=$signed(MDU_num1)*$signed(MDU_num2);
								count <= 4;
							end
					`multu:begin
								{HI_pre,LO_pre}<=MDU_num1*MDU_num2;
								count <= 4;
							end
					`div:begin
								HI_pre<=$signed(MDU_num1)%$signed(MDU_num2);
								LO_pre<=$signed(MDU_num1)/$signed(MDU_num2);
								count <= 9;
							end
					`divu:begin
								HI_pre<=MDU_num1%MDU_num2;
								LO_pre<=MDU_num1/MDU_num2;
								count <= 9;
							end
					default:begin
						HI_pre<=HI_pre;
						LO_pre<=LO_pre;
					end
				endcase
		end
			else if(R_Instruction == 6'b000000 && MDUop == `mthi)begin
					HI <= MDU_num1;
					//$display("%h@HI<=%h",PC_E,MDU_num1);
			end
			else if(R_Instruction == 6'b000000  && MDUop == `mtlo)begin
					LO <= MDU_num1;
					//$display("%h@LO<=%h",PC_E,MDU_num1);
			end
			
			if((start!=1'b1)&&(reset==1'b0)&&(count!=0)) begin
				count = count - 1;
			end
	 end
	 always @(negedge busy) begin
			HI <= HI_pre;
			LO <= LO_pre;
	 end
	 
	 assign busy = (count!=0||start)?1'b1:1'b0;
	 


endmodule
