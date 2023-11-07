`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:29:59 11/03/2022 
// Design Name: 
// Module Name:    CU 
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
`define add 6'b100000
`define sub 6'b100010
`define ori 6'b001101
`define sw  6'b101011
`define lw  6'b100011
`define beq 6'b000100
`define lui 6'b001111
`define jal 6'b000011
`define jr  6'b001000
`define nop 6'b000000
`define j 6'b000010
`define newop 6'b111111//课上要加的新指令

`define ALUopAdd 0
`define ALUopSub 1
`define ALUopOri 2
`define ALUopLui 3

`define MemtoRegALUresult 0
`define MemtoRegMemoutput 1
`define MemtoRegJal       2

`define NPC_ADD4   0
`define NPC_Branch 1
`define NPC_Jal    2
`define NPC_Jr     3

`define RegDstRt  0
`define RegDstRd  1
`define RegDstjal 2

`default_nettype none
module CU(
    input wire [5:0] Instruction_Class,
    input wire [5:0] Func,
    input wire CMP_Output,
    output reg[3:0] NPCop,
    output reg RegWrite,
    output reg [3:0] MemtoReg,
    output reg MemRead,
    output reg [3:0] RegDst,
    output reg [3:0] ALU_SRC,
    output reg [3:0] ALUop,
    output reg EXTop,
    output reg [1:0] Tuse_Rt_D,//如果不需要用 设为3
    output reg [1:0] Tuse_Rs_D,//如果不需要用 设为3 尽可能大
    output reg [1:0] Tnew_D,//没有产生有价值的数据，设为0,尽可能小
	 output reg jal,//如果是jal指令，那么Tnew虽然是0，但是其输出不是在ALUresult，而是在PC_8，一定要注意！
	 output reg newsign
    );
		

	always @(*) begin
		case(Instruction_Class) 
			`R_Instruction:begin
								case(Func) 
									`add:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRd;
											RegWrite = 1;
											EXTop = 0;
											Tuse_Rs_D = 1;
											Tuse_Rt_D = 1;
											Tnew_D    = 1;
											jal =0;
											newsign = 0;
										 end
								     `sub:begin
								     		MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopSub;
											ALU_SRC = 0;
											RegDst = `RegDstRd;
											RegWrite = 1;
											EXTop = 0;
											Tuse_Rs_D = 1;
											Tuse_Rt_D = 1;
											Tnew_D    = 1;
											jal =0;
											newsign = 0;
								     	  end
								      `jr:begin
								      		MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_Jr;
											ALUop = `ALUopSub;
											ALU_SRC = 0;
											RegDst = `RegDstRt;
											RegWrite = 0;
											EXTop = 0;
											Tuse_Rs_D = 0;
											Tuse_Rt_D = 3;//
											Tnew_D    = 0;
											jal =0;
											newsign = 0;
								      	  end
								      	default:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRt;
											RegWrite = 0;
											EXTop = 0;
											Tuse_Rs_D = 3;
											Tuse_Rt_D = 3;//
											Tnew_D    = 0;
											jal =0;
											newsign = 0;
											end
								
								endcase // Func
						  end
		default:begin
			case(Instruction_Class)
			`lw:begin
					MemtoReg = `MemtoRegMemoutput;
					MemRead = 0;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopAdd;
					ALU_SRC = 1;
					RegDst = `RegDstRt;
					RegWrite = 1;
					EXTop = 1;
					Tuse_Rs_D = 1;
					Tuse_Rt_D = 3;//
					Tnew_D    = 2;
					jal =0;
					newsign = 0;
				end
			`sw:begin
					MemtoReg = `MemtoRegMemoutput;
					MemRead = 1;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopAdd;
					ALU_SRC = 1;
					RegDst = `RegDstRt;
					RegWrite = 0;
					EXTop = 1;
					Tuse_Rs_D = 1;
					Tuse_Rt_D = 2;//
					Tnew_D    = 0;
					jal =0;
					newsign = 0;
				end
			`ori:begin
					MemtoReg = `MemtoRegALUresult;
					MemRead = 0;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopOri;
					ALU_SRC = 1;
					RegDst = `RegDstRt;
					RegWrite = 1;
					EXTop = 0;
					Tuse_Rs_D = 1;
					Tuse_Rt_D = 3;//
					Tnew_D    = 1;
					jal =0;
					newsign = 0;
				end
			`beq:begin
					MemtoReg = `MemtoRegALUresult;
					MemRead = 0;
					NPCop = (CMP_Output) ? `NPC_Branch : `NPC_ADD4;
					ALUop = `ALUopSub;
					ALU_SRC = 0;
					RegDst = `RegDstRt;
					RegWrite = 0;
					EXTop = 1;
					Tuse_Rs_D = 0;
					Tuse_Rt_D = 0;//
					Tnew_D    = 0;
					jal =0;
					newsign = 0;
				end
			`lui:begin
					MemtoReg = `MemtoRegALUresult;
					MemRead = 0;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopLui;
					ALU_SRC = 1;
					RegDst = `RegDstRt;
					RegWrite = 1;
					EXTop = 0;
					Tuse_Rs_D = 3;
					Tuse_Rt_D = 3;//
					Tnew_D    = 1;
					jal =0;
					newsign = 0;
				end
			`jal:begin
					MemtoReg = `MemtoRegJal;
					MemRead = 0;
					NPCop = `NPC_Jal;
					ALUop = `ALUopAdd;
					ALU_SRC = 0;
					RegDst = `RegDstjal;
					RegWrite = 1;
					EXTop = 0;
					Tuse_Rs_D = 3;
					Tuse_Rt_D = 3;//
					Tnew_D    = 0;
					jal =1;
					newsign = 0;
				end
			`j:begin
					MemtoReg = `MemtoRegJal;
					MemRead = 0;
					NPCop = `NPC_Jal;//与jal跳转的一样
					ALUop = `ALUopAdd;
					ALU_SRC = 0;
					RegDst = `RegDstjal;
					RegWrite = 0;//不用写寄存器
					EXTop = 0;
					Tuse_Rs_D = 3;
					Tuse_Rt_D = 3;//
					Tnew_D    = 0;
					jal =0;//记得jal是0,不然就转发了，不过也无所谓，因为RegWrite是0，保险起见
					newsign = 0;
				end
			`newop:begin
					MemtoReg = `MemtoRegALUresult;
					MemRead = 0;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopAdd;
					ALU_SRC = 0;
					RegDst = `RegDstRt;
					RegWrite = 1;
					EXTop = 0;
					Tuse_Rs_D = 3;
					Tuse_Rt_D = 3;//
					Tnew_D    = 2;
					jal =0;
					newsign = 1;
			end
			default:begin
					MemtoReg = `MemtoRegALUresult;
					MemRead = 0;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopAdd;
					ALU_SRC = 0;
					RegDst = `RegDstRt;
					RegWrite = 0;
					EXTop = 0;
					Tuse_Rs_D = 3;
					Tuse_Rt_D = 3;//
					Tnew_D    = 0;
					jal =0;
					newsign = 0;
				end
		endcase
	end
endcase
end


endmodule




