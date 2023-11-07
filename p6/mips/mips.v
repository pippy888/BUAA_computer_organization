`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:09:35 11/06/2022 
// Design Name: 
// Module Name:    mips 
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
`default_nettype none
module mips(
    input wire clk,
    input wire reset,
	 //IM
	 input wire [31:0] i_inst_rdata,//指令值
	 output wire [31:0] i_inst_addr,//输出的指令地址
	 //DM
	 input wire [31:0] m_data_rdata,//读入的DM的数据
	 output wire [31:0] m_data_addr,//DM数据原始地址，即ALUresult
	 output wire [31:0] m_data_wdata,//待写数据
	 output wire [3:0] m_data_byteen,//四位字节使能
	 output wire [31:0] m_inst_addr,//PC_M
	 //GRF 这个只是简单的传输信号罢了，实质性运作还是自己的GRF，但不需要自己输出了
	 output wire w_grf_we,
    output wire [4:0] w_grf_addr,
    output wire [31:0] w_grf_wdata,
	 
    output wire [31:0] w_inst_addr
    );
    
    wire [31:0] PC;
    wire [31:0] NPC;
    wire En_PC;
    wire [31:0] Instruction;
    wire En_D;
    wire [31:0] PC_D;
	 
    wire [31:0] Instruction_D;
	 
	 wire start_D;
	 wire [5:0] MDUop_D;
	 wire MDU_Instruction;
    wire CMP_Output;
    wire [31:0] Original1;
    wire [31:0] Original2;
    wire [3:0] NPCop;
    wire RegWrite;
    wire [3:0] MemtoReg;
    wire MemRead;
    wire [3:0] RegDst;
    wire [3:0] ALU_SRC;
    wire [3:0] ALUop;
    wire EXTop;
	 wire jal;
	 wire jal_E;
	 wire jal_M;
    wire [1:0] Tuse_Rt_D;//如果不需要用 设为3
    wire [1:0] Tuse_Rs_D;//如果不需要用 设为3 尽可能大
    wire [1:0] Tnew_D;//没有产生有价值的数据，设为0,尽可能小
    wire [31:0] Read1;
    wire [31:0] Read2;
    wire [4:0] Rs_D;
    wire [4:0] Rt_D;
    wire [4:0] Rs_E;
    wire [4:0] Rt_E;
    wire [4:0] Dst_E;
    wire [4:0] Dst_M;
    wire [4:0] Dst_W;
    wire RegWrite_E;
    wire RegWrite_M;
    wire RegWrite_W;
    wire MemRead_M;
    wire [1:0] Tnew_E;
    wire [1:0] Tnew_M;
    wire Reset_E;
    wire [3:0] MuxForward_Rs_D;
    wire [3:0] MuxForward_Rt_D;
    wire [3:0] MuxForward_Rs_E;
    wire [3:0] MuxForward_Rt_E;
    wire MuxForward_Rt_M;
    wire [31:0] PC8;
    wire [31:0] ExtImm;
    wire [31:0] NPC_D;
    wire [31:0] PC_Add4;
    wire Initial;

    wire [3:0] ALU_SRC_E;
    wire MemRead_E;
    wire [3:0] ALUop_E;

	 wire [5:0] MDUop_E;
	 wire start_E;
	 wire MDU_Instruction_E;
	 wire [31:0] Instruction_E;
    wire [31:0] PC_E;
    wire [31:0] PC8_E;
    wire [3:0] MemtoReg_E;
    wire [31:0] Read1_E;
    wire [31:0] Read2_E;
	 wire [31:0] ALUresult_E;//区分ALUresult，这个是用来MUX MDU寄存器的；

    wire [31:0] Imm_E;
    wire [4:0] addr_w;
    wire [31:0] SRC_B;
    wire [31:0] SRC_A;
    wire [31:0] SRC_N_B;

    wire [3:0] MemtoReg_M;

	 wire [31:0] Instruction_M;   
    wire [31:0] PC_M;
    wire [31:0] PC8_M;
    wire [31:0] Read2_M;
	 wire [3:0] Loadop;
	 wire [31:0] ALUresult;
	 wire [31:0] ALUresult_M;
	 wire [31:0] MemOutput_pre;
    wire [31:0] MemOutput;
    wire [31:0] MemData;
    wire [31:0] Mresult;
    wire [3:0] Wresult;

	 wire [31:0] Instruction_W;
    wire [3:0] MemtoReg_W;
    wire [31:0] PC_W;
    wire [31:0] PC8_W;
    wire [31:0] ALUresult_W;

    wire [31:0] MemOutput_W;
    wire [31:0] Wd;
	 wire [31:0] HI;
	 wire [31:0] LO;
	 wire busy;
	 wire [5:0] count;
	 
	 wire newsign_D,newsign_E,newsign_M,newsign_W;
	 wire [4:0]Dst_D_New,Dst_E_New,Dst_M_New,Dst_W_New;
	 

    parameter [4:0] jrReg = 31;
    PC pc (
        .NPC(NPC), 
        .En_PC(En_PC), 
        .PC(PC), 
        .clk(clk), 
        .reset(reset)
    );
	 
	 assign i_inst_addr = PC;
/*
    IM im (
        .PC(PC), 
        .Instruction(Instruction)
    );
*/
    IF_ID if_id (
        .Instruction_F(i_inst_rdata), 
        .PC_F(PC), 
        .clk(clk), 
        .reset(reset), 
        .En_D(En_D), 
        .PC_D(PC_D), 
        .Instruction_D(Instruction_D)
    );

    CU cu (
        .Instruction_Class(Instruction_D[31:26]), 
        .Func(Instruction_D[5:0]), 
        .CMP_Output(CMP_Output), 
        .NPCop(NPCop), 
        .RegWrite(RegWrite), 
        .MemtoReg(MemtoReg), 
        .MemRead(MemRead), 
        .RegDst(RegDst), 
        .ALU_SRC(ALU_SRC), 
        .ALUop(ALUop), 
        .EXTop(EXTop), 
        .Tuse_Rt_D(Tuse_Rt_D), 
        .Tuse_Rs_D(Tuse_Rs_D), 
        .Tnew_D(Tnew_D),
		  .jal(jal),
		  .start(start_D),
		  .MDU_Instruction(MDU_Instruction),
		  .busy(busy),
		  .newsign(newsign_D)
    );

    stall_forward stall_forward (
        .Rs_D(Instruction_D[25:21]), 
        .Rt_D(Instruction_D[20:16]), 
        .Rs_E(Rs_E), 
        .Rt_E(Rt_E), 
        .Dst_E(Dst_E), 
        .Dst_M(Dst_M), 
        .Dst_W(Dst_W), 
		  .jal_E(jal_E),
		  .jal_M(jal_M),
        .RegWrite_E(RegWrite_E), 
        .RegWrite_M(RegWrite_M), 
        .RegWrite_W(RegWrite_W), 
        .MemRead_M(MemRead_M), 
        .Tnew_E(Tnew_E), 
        .Tnew_M(Tnew_M), 
        .Tuse_Rs_D(Tuse_Rs_D), 
        .Tuse_Rt_D(Tuse_Rt_D), 
        .En_PC(En_PC), 
        .En_D(En_D), 
        .Reset_E(Reset_E), 
        .MuxForward_Rs_D(MuxForward_Rs_D), 
        .MuxForward_Rt_D(MuxForward_Rt_D), 
        .MuxForward_Rs_E(MuxForward_Rs_E), 
        .MuxForward_Rt_E(MuxForward_Rt_E), 
        .MuxForward_Rt_M(MuxForward_Rt_M),
		  .MDU_Instruction(MDU_Instruction),
		  .busy(busy),
		  .newsign_D(newsign_D),
		  .newsign_E(newsign_E),
		  .newsign_M(newsign_M),
		  .newsign_W(newsign_W),
		  .Dst_E_New(Dst_E_New)
    );

    MUX_addr addr (
        .addr1(Instruction_D[20:16]), 
        .addr2(Instruction_D[15:11]), 
        .addr3(jrReg), 
        .RegDst(RegDst), 
        .addr_w(addr_w)
    );

    GRF grf (
        .clk(clk), 
        .reset(reset), 
        .RegWrite(RegWrite_W), 
        .Addr1(Instruction_D[25:21]), 
        .Addr2(Instruction_D[20:16]), 
        .Addr3(Dst_W), 
        .Wd(Wd), 
        .PC_D(PC_W), //写的时候PC值，名字取得不好，不是_D
        .Read1(Original1), 
        .Read2(Original2)
    );
	 
	 assign w_grf_we = RegWrite_W;
    assign w_grf_addr = Dst_W;
    assign w_grf_wdata = Wd;
	 
    assign w_inst_addr = PC_W;

    MUX_Forward_D_E mux_forward_d_rs (
        .Original(Original1), 
        .Mresult(ALUresult_M), 
        .Wresult(Wd), 
		  .PC8_E(PC8_E),
		  .PC8_M(PC8_M),
        .MuxForward(MuxForward_Rs_D), 
        .MUXResult(Read1)
    );

    MUX_Forward_D_E mux_forward_d_rt (
        .Original(Original2), 
        .Mresult(ALUresult_M), 
        .Wresult(Wd), 
		  .PC8_E(PC8_E),
		  .PC8_M(PC8_M),
        .MuxForward(MuxForward_Rt_D), 
        .MUXResult(Read2)
    );

    EXT ext (
        .EXTop(EXTop), 
        .Imm(Instruction_D[15:0]), 
        .ExtImm(ExtImm)
    );


    NPC npc (
		  .PC(PC),
        .PC_D(PC_D), 
        .NPCop(NPCop), 
        .ExtImm(ExtImm), 
        .Imm26(Instruction_D[25:0]), 
        .RD1A(Read1), 
        .PC8(PC8), 
        .NPC(NPC_D)
    );

    assign PC_Add4 = PC + 4;
    assign Initial = (PC == 32'h0000_3000) ? 1'b1 : 1'b0;

    MUX_PC mux_pc(
        .PC_Add4(PC_Add4),
        .NPC_D(NPC_D),
        .Initial(Initial),
        .NPC(NPC)
    );

    CMP cmp (
        .CMP1(Read1), 
        .CMP2(Read2), 
        .CMP_Output(CMP_Output)
    );

    ID_EX id_ex (
        .RegWrite_D(RegWrite), 
        .ALU_SRC_D(ALU_SRC), 
        .MemRead_D(MemRead), 
        .ALUop_D(ALUop), 
        .Rs_D(Instruction_D[25:21]), 
        .Rt_D(Instruction_D[20:16]), 
        .Dst_D(addr_w), 
        .PC_D(PC_D), 
        .MemtoReg_D(MemtoReg), 
		  .jal(jal),
		  .Instruction_D(Instruction_D),
        .Read1_D(Read1), 
        .Read2_D(Read2), 
        .Tnew_D(Tnew_D), 
        .Imm_D(ExtImm), 
        .PC8_D(PC8), 
        .clk(clk), 
        .reset(reset), 
        .Reset_E(Reset_E),
		  .start_D(start_D),
		  .MDUop_D(Instruction_D[5:0]),
		  .MDU_Instruction_D(MDU_Instruction),
		  

        .RegWrite_E(RegWrite_E), 
        .ALU_SRC_E(ALU_SRC_E), 
        .MemRead_E(MemRead_E), 
        .ALUop_E(ALUop_E), 
		  .jal_E(jal_E),
		  .Instruction_E(Instruction_E),
        .Rs_E(Rs_E), 
        .Rt_E(Rt_E), 
        .Dst_E(Dst_E), 
        .PC_E(PC_E), 
        .PC8_E(PC8_E), 
        .MemtoReg_E(MemtoReg_E), 
        .Read1_E(Read1_E), 
        .Read2_E(Read2_E), 
        .Tnew_E(Tnew_E), 
        .Imm_E(Imm_E),
		  .start_E(start_E),
		  .MDUop_E(MDUop_E),
		  .MDU_Instruction_E(MDU_Instruction_E),
		  
		  .newsign_D(newsign_D),
		  .newsign_E(newsign_E),
		  .Dst_D_New(Dst_D_New),
		  .Dst_E_New(Dst_E_New)
    );
	 
	 assign Dst_D_New = jrReg;

    MUX_Forward_D_E mux_forward_e_rs (
        .Original(Read1_E), 
        .Mresult(ALUresult_M), 
        .Wresult(Wd), 
		  .PC8_E(PC8_E),//E是没有用的，但是保持格式
		  .PC8_M(PC8_M),
        .MuxForward(MuxForward_Rs_E), 
        .MUXResult(SRC_A)
    );

    MUX_Forward_D_E mux_forward_e_rt (
        .Original(Read2_E), 
        .Mresult(ALUresult_M), 
        .Wresult(Wd), 
		  .PC8_E(PC8_E),//E是没有用的，但是保持格式
		  .PC8_M(PC8_M),
        .MuxForward(MuxForward_Rt_E), 
        .MUXResult(SRC_N_B)
    );

    MUX_ALU mux_alu (
        .ALU_SRC(ALU_SRC_E), 
        .read2(SRC_N_B), 
        .ExtImm16(Imm_E), 
        .SRC_B(SRC_B)
    );
	 
	 MDU mdu (
		.clk(clk), 
		.reset(reset), 
		.PC_E(PC_E),
		.MDU_num1(SRC_A), 
		.MDU_num2(SRC_N_B), 
		.start(start_E), 
		.R_Instruction(Instruction_E[31:26]),
		.MDUop(MDUop_E), 
		.busy(busy), 
		.HI(HI), 
		.LO(LO),
		.count(count)
	);

    ALU alu (
        .SRCA(SRC_A), 
        .SRCB(SRC_B), 
        .ALUop(ALUop_E), 
        .ALUresult(ALUresult)
    );
	 
	 assign ALUresult_E = (Instruction_E[31:26] == 6'b000000 && Instruction_E[5:0] == 6'b010000) ? HI :
						(Instruction_E[31:26] == 6'b000000 && Instruction_E[5:0] == 6'b010010) ? LO :
						ALUresult ;
	 

    EX_MEM ex_mem (
        .RegWrite_E(RegWrite_E), 
        .MemRead_E(MemRead_E), 
        .MemtoReg_E(MemtoReg_E), 
        .Read2_E(SRC_N_B), 
		  .jal_E(jal_E),
        .PC_E(PC_E), 
        .PC8_E(PC8_E), 
        .ALUresult_E(ALUresult_E),
		  .Instruction_E(Instruction_E),		  
        .Dst_E(Dst_E), 
        .Tnew_E(Tnew_E), 
        .clk(clk), 
        .reset(reset), 

        .RegWrite_M(RegWrite_M), 
        .MemtoReg_M(MemtoReg_M), 
        .MemRead_M(MemRead_M), 
        .ALUresult_M(ALUresult_M), 
		  .Instruction_M(Instruction_M),
		  .jal_M(jal_M),
        .PC_M(PC_M), 
        .PC8_M(PC8_M), 
        .Read2_M(Read2_M), 
        .Dst_M(Dst_M), 
        .Tnew_M(Tnew_M),
		  
		  .newsign_E(newsign_E),
		  .newsign_M(newsign_M),
		  .Dst_E_New(Dst_E_New),
		  .Dst_M_New(Dst_M_New)
    );
	 
    MUX_Forward_M mux_forward_m (
        .Original(Read2_M), 
        .Wresult(Wd), 
        .MuxForward(MuxForward_Rt_M), 
        .MUXResult(MemData)
    );
	 
	 DMop dmop (
		.Instruction_M(Instruction_M), 
		.ALUresult_M(ALUresult_M), 
		.m_data_byteen(m_data_byteen), 
		.Loadop(Loadop)
	);

	 
	 
	 assign m_data_addr = ALUresult_M;//地址
	 assign m_inst_addr = PC_M;//M级PC
	 Store_MemData store_memdata (
		.Read2_M(MemData), 
		.m_data_byteen(m_data_byteen), //四位字节使能
		.m_data_wdata(m_data_wdata)//要写入DM的数据
	);
/*
    DM dm (
        .ALUresult(ALUresult_M), 
        .Read2(MemData), 
        .MemRead(MemRead_M), 
        .reset(reset), 
        .clk(clk), 
        .MemtoReg(MemtoReg_M), 
        .PC(PC_M), 
        .MemOutput(MemOutput)
    );
*/
		assign  MemOutput_pre = m_data_rdata; 
		
		LoadMemData loadmemdata(
		.MemOutput_pre(MemOutput_pre), 
		.ALUresult_M(ALUresult_M), 
		.Loadop(Loadop), 
		.MemOutput(MemOutput)
	);
	
		
    MEM_WB mem_wb (
        .RegWrite_M(RegWrite_M), 
        .MemtoReg_M(MemtoReg_M), 
        .PC_M(PC_M), 
        .PC8_M(PC8_M), 
        .ALUresult_M(ALUresult_M), 
		  .Instruction_M(Instruction_M),
        .MemOutput_M(MemOutput), 
        .Dst_M(Dst_M), 
        .clk(clk), 
        .reset(reset), 

        .RegWrite_W(RegWrite_W), 
        .MemtoReg_W(MemtoReg_W), 
        .PC_W(PC_W), 
        .PC8_W(PC8_W), 
        .ALUresult_W(ALUresult_W), 
		  .Instruction_W(Instruction_W),
        .Dst_W(Dst_W), 
        .MemOutput_W(MemOutput_W),
		  
		  .newsign_M(newsign_M),
		  .newsign_W(newsign_W),
		  .Dst_M_New(Dst_M_New),
		  .Dst_W_New(Dst_W_New)
    );

    MUX_Wd mux_wd (
        .ALUresult(ALUresult_W), 
        .MemData(MemOutput_W), //这个名字取的不好，跟上面的重复了
        .PC8(PC8_W), 
        .MemtoReg(MemtoReg_W), 
        .Wd(Wd)
    );


endmodule