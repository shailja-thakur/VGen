// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
begin
	if(sel == 1'b1) begin
	pos[1] <= b[0];
	pos[0] <= b[1];
	end
	else pos[1:0] <= 2'b00;
end
// This is a 4-to-2 decoder
module mux4to2(w,s,y);
input [3:0]w;
input [1:0]s;
output y;
assign y = s[0]&(~w[3])|
s[1]&(~w[2])|
s[0]&(w[3])|
s[1]&(w[2]);
endmodule
