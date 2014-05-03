module simple_alt(P,Q,R,clk_in,PB,S);

input [3:0] P,Q,R;
input clk_in,PB;
output [5:0] S;  

reg [5:0] S1;

assign S=S1;

always @(posedge clk_in)
begin
	if (!PB==0)
	begin
		S1=P+Q-R;
	end
	else
	begin
		S1=P+Q+R;
	end
end
endmodule 