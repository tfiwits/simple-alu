`timescale 1ns/1ps

module simple_alt_tb;

reg [3:0] P,Q,R;
reg clk_in,PB;
wire [5:0] S;  

 simple_alt test(.P(P),.Q(Q),.R(R),.clk_in(clk_in),.PB(PB),.S(S));
  
  
initial
	begin
		PB=0;
		P = 0;
		Q = 0;
		R = 0;
		clk_in=0;
	end
always   #20 clk_in=~clk_in;  
always   #20 P  = P+1;
always   #320 Q  = Q+1;
always   #5120 R  = R+1;
always   #81920 PB = ~PB; 

endmodule

