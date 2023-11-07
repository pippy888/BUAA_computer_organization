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
`define and 6'b100100
`define or 6'b100101
`define slt 6'b101010
`define sltu 6'b101011
`define mult 6'b011000
`define multu 6'b011001
`define div 6'b011010
`define divu 6'b011011
`define mfhi 6'b010000//读 到rd!!
`define mflo 6'b010010
`define mthi 6'b010001//写 rs的数据
`define mtlo 6'b010011
`define newop 6'b111111//课上要加的新指令

//存储类指令
`define sw 6'b101011
`define sb 6'b101000
`define sh 6'b101001
//载入类指令
`define lw  6'b100011
`define lb 6'b100000
`define lh 6'b100001
//立即数指令
`define ori 6'b001101
`define lui 6'b001111
`define andi 6'b001100
`define addi 6'b001000

`define jal 6'b000011
`define jr  6'b001000
`define j 6'b000010
`define beq 6'b000100
`define bne 6'b000101


`define nop 6'b000000

`define ALUopAdd 0
`define ALUopSub 1
`define ALUopOri 2
`define ALUopLui 3
`define ALUopAnd 4
`define ALUopOr  5
`define ALUopSlt 6
`define ALUopSltu 7

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



module CU(
    input wire [5:0] Instruction_Class,
    input wire [5:0] Func,
    input wire CMP_Output,
	 input wire busy,
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
	 output wire start,
	 output wire MDU_Instruction,
	 output reg newsign
    );
		

	/*always @(*) begin
		if((Instruction_Class == `R_Instruction)&&((Func == `mult)||(Func == `multu)||(Func == `div)||(Func == `divu))&&(count==0||count==1)) begin
			start = 1;
			MDUop = (Func == `mult) ? `mult :
					  (Func == `multu) ? `multu :
					  (Func == `div) ? `div :
					  (Func == `divu) ? `divu : 
					   0;
		end
		else if(Instruction_Class == `R_Instruction)begin
			start = 0;
			MDUop = (Func == `mfhi) ? `mfhi :
					  (Func == `mflo) ? `mflo :
					  (Func == `mthi) ? `mthi :
					  (Func == `mtlo) ? `mtlo : 
					   0;
		end
		else begin
			start = 0;
			MDUop = 0;
		end
		
	end
	*/
	//wire MDU_Instruction_true ;
	
	assign MDU_Instruction = ((Instruction_Class == `R_Instruction)&&((Func == `mult)||(Func == `multu)||(Func == `div)||(Func == `divu)||(Func == `mfhi)||(Func == `mflo)||(Func == `mthi)||(Func == `mtlo)))?1'b1:1'b0; 
	assign start = !busy&& ((Instruction_Class == `R_Instruction)&&((Func == `mult)||(Func == `multu)||(Func == `div)||(Func == `divu)) )? 1'b1 :1'b0;	
	//assign MDU_Instruction = MDU_Instruction_true;
	
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
										`and:begin
								     		MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAnd;
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
										`or:begin
								     		MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopOr;
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
										 `slt:begin
								     		MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopSlt;
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
										`sltu:begin
								     		MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopSltu;
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
										 `mult:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRt;
											RegWrite = 0;
											EXTop = 0;
											Tuse_Rs_D = 1;
											Tuse_Rt_D = 1;
											Tnew_D    = 0;
											jal =0;
											newsign = 0;
										 end
										 `multu:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRt;
											RegWrite = 0;
											EXTop = 0;
											Tuse_Rs_D = 1;
											Tuse_Rt_D = 1;
											Tnew_D    = 0;
											jal =0;
											newsign = 0;
										 end
										 `div:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRt;
											RegWrite = 0;
											EXTop = 0;
											Tuse_Rs_D = 1;
											Tuse_Rt_D = 1;
											Tnew_D    = 0;
											jal =0;
											newsign = 0;
										 end
										 `divu:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRt;
											RegWrite = 0;
											EXTop = 0;
											Tuse_Rs_D = 1;
											Tuse_Rt_D = 1;
											Tnew_D    = 0;
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
										`mfhi:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRd;
											RegWrite = 1;
											EXTop = 0;
											Tuse_Rs_D = 3;
											Tuse_Rt_D = 3;//
											Tnew_D    = 1;
											jal =0;
											newsign = 0;
										 end
										 `mflo:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRd;
											RegWrite = 1;
											EXTop = 0;
											Tuse_Rs_D = 3;
											Tuse_Rt_D = 3;//
											Tnew_D    = 1;
											jal =0;	
											newsign = 0;
										 end
										 `mthi:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRd;
											RegWrite = 0;
											EXTop = 0;
											Tuse_Rs_D = 1;
											Tuse_Rt_D = 3;//
											Tnew_D    = 0;
											jal =0;
											newsign = 0;											
										 end
										 `mtlo:begin
											MemtoReg = `MemtoRegALUresult;
											MemRead = 0;
											NPCop = `NPC_ADD4;
											ALUop = `ALUopAdd;
											ALU_SRC = 0;
											RegDst = `RegDstRd;
											RegWrite = 0;
											EXTop = 0;
											Tuse_Rs_D = 1;
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
//////////载入类
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
			`lb:begin
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
			`lh:begin
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
//////////存储类
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
					Tuse_Rt_D = 2;
					Tnew_D    = 0;
					jal =0;
					newsign = 0;
				end
			`sb:begin
					MemtoReg = `MemtoRegMemoutput;
					MemRead = 1;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopAdd;
					ALU_SRC = 1;
					RegDst = `RegDstRt;
					RegWrite = 0;
					EXTop = 1;
					Tuse_Rs_D = 1;
					Tuse_Rt_D = 2;
					Tnew_D    = 0;
					jal =0;
					newsign = 0;
				end
			`sh:begin
					MemtoReg = `MemtoRegMemoutput;
					MemRead = 1;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopAdd;
					ALU_SRC = 1;
					RegDst = `RegDstRt;
					RegWrite = 0;
					EXTop = 1;
					Tuse_Rs_D = 1;
					Tuse_Rt_D = 2;
					Tnew_D    = 0;
					jal =0;
					newsign = 0;
				end
/////////////立即数指令
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
			`andi:begin
					MemtoReg = `MemtoRegALUresult;
					MemRead = 0;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopAnd;
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
			`addi:begin
					MemtoReg = `MemtoRegALUresult;
					MemRead = 0;
					NPCop = `NPC_ADD4;
					ALUop = `ALUopAdd;
					ALU_SRC = 1;
					RegDst = `RegDstRt;
					RegWrite = 1;
					EXTop = 1;
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
			`bne:begin
					MemtoReg = `MemtoRegALUresult;
					MemRead = 0;
					NPCop = (!CMP_Output) ? `NPC_Branch : `NPC_ADD4;
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
					RegWrite = 0;
					EXTop = 0;
					Tuse_Rs_D = 3;
					Tuse_Rt_D = 3;//
					Tnew_D    = 0;
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




