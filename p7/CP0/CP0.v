`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:32 11/24/2022 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input wire clk,
    input wire reset,
    input wire en,//写使能信号
    input wire [4:0] CP0Add,//寄存器地址 SR12 Cause13 EPC14
    input wire [31:0] CP0In,//CP0写入数据
    output reg [31:0] CP0Out,//CP0读出数据
    input wire [31:0] VPC,//受害PC
    input wire BDIn,//是否是延迟槽指令出问题
    input wire [5:0] HWInt,//输入外部中断信号
    input wire EXLClr,//SR【1】的复位信号,eret
    input wire [4:0] ExcCodeIn,//内部异常类型
    output wire [31:0] EPCOut,//EPC的值
	 output reg [31:0] EBase,
    output wire Req//进入处理程序请求
	 //output reg ResponseInt
    );
	 
	//SR
	 reg [15:10] IM;//SR寄存器IM分别对应六个外部中断，相应位置1表示允许中断
	 reg EXL;//SR寄存器的，是否处在异常处理程序当中，如果是屏蔽中断
	 reg IE;//SR的全局中断使能,默认不能中断,1是可以中断
	 //相应位置0禁止中断，可以屏蔽一些中断，只能通过mtc0指令修改这个功能域
	//Cause
	 reg [15:10] IP;//Cause寄存器的IP表示6位待决的中断位，但是只有3个有用
	 //分别对应外部中断，TC0和TC1，每个周期都要被修改一次，1表示有中断
	 reg [6:2] ExcCode;//Cause寄存器的ExcCode，代表内部异常类型
	 reg BD;//Cause寄存器是否是延迟槽指令
	//EPC
	  reg [31:0] EPC;
	  
	 
	  
	  
	 //wire ResponseInt_Next;	 
	 wire [31:0] SR;//12
	 wire [31:0] Cause;//13
	 wire [31:0] EPC_Next;//14
	 wire IReq,EReq;
	 //三个寄存器
	 assign SR = {{16{1'b0}},IM,8'h0,EXL,IE};
	 assign Cause = {BD,15'h0,IP,3'h0,ExcCode,2'h0};
	 assign EPCOut = EPC;
	 //对Req的控制，I：interrupt E：exception
	 assign IReq = (|(HWInt&IM))&IE&!EXL;//IE只能限制中断，不管异常
	 assign EReq = (| ExcCodeIn)&!EXL;
	 assign Req = IReq | EReq;
	 assign EPC_Next = (Req == 1'b1) ? (BDIn ? VPC - 4 : VPC) : EPC;
	 //assign ResponseInt_Next = (HWInt[2]&IM[12]&IE&!EXL);
	 
	 
	 
	 initial begin
		IM <= 0;
		BD <= 0;
		EPC <= 0;
		IP <= 0;
		ExcCode <= 0;		
		EXL <= 0;
		IE <= 0;
		EBase <= 32'h0000_4180;
	 end
	 
	 always @(*) begin
		case(CP0Add)
			5'd12: CP0Out = SR;
			5'd13: CP0Out = Cause;
			5'd14: CP0Out = EPC;
			5'd15: CP0Out = EBase;
			default: CP0Out = 0;
		endcase
	 end
	 
	 always @(posedge clk) begin
		if(reset) begin
			IM <= 0;
			BD <= 0;
			EPC <= 0;
			IP <= 0;
			ExcCode <= 0;
			EXL <= 0;
			IE <= 0;
			EBase <= 32'h0000_4180;
		end
		else begin
			IP <= HWInt;
			if(Req) begin
				IM <= IM;
				EXL <= 1'b1;
				IE <= IE;
				BD <= BDIn;
				ExcCode <= IReq ? 0 :ExcCodeIn ;//如果是内部，采用exccodein，否则是0！一定要是0！这里还体现了外部中断优先处理的原则
				EPC <= EPC_Next;
				EBase <= EBase;
			end
			else if(en) begin//mtc0
				BD <= BD;
				ExcCode <= ExcCode;//这两个是Cause的，加上上面的IP，mtc0不改变这个
				case(CP0Add)
					5'd12:begin
						IM <= CP0In[15:10];
						EXL <= CP0In[1];
						IE <= CP0In[0];
						EPC <= EPC;
						EBase <= EBase;
					end
					5'd13: begin
						IM <= IM;
						EXL <= EXL;
						IE <= IE;
						EPC <= EPC;
						EBase <= EBase;
					end		
					5'd14: begin
						IM <= IM;
						EXL <= EXL;
						IE <= IE;
						EPC <= CP0In;
						EBase <= EBase;
					end	
					5'd15: begin
						IM <= IM;
						EXL <= EXL;
						IE <= IE;
						EPC <= EPC;
						EBase <= CP0In;
					end	
					default:begin
						IM <= IM;
						EXL <= EXL;
						IE <= IE;
						EPC <= EPC;
						EBase <= EBase;
					end
				endcase
			end
			
			else if(EXLClr) begin//eret,与mtc0呼应
				BD <= BD;
				ExcCode <= ExcCode;
				IM <= IM;
				EXL <= 1'b0;//退出
				IE <= IE;
				EPC <= EPC;
				EBase <= EBase;
			end
			else begin
				BD <= BD;
				ExcCode <= ExcCode;
				IM <= IM;
				EXL <= EXL;
				IE <= IE;
				EPC <= EPC;
				EBase <= EBase;
			end
		end
	 end


endmodule
