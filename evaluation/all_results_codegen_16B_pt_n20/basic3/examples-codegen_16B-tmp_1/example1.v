// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [1:0] sel;
reg [1:0] b;
always @(posedge clr ) begin

	if (sel==0) begin
	// CS = 1 and CE = 1
	// Output one if in = 0, 0 otherwise.
	b <= in;
	end else if (sel==1) begin
	// CS = 1 and CE = 0
	// Output zero if in = 0, 1 otherwise.
	b <= in;
	end else if (sel==2) begin
	// CE = 1, CS=0
	// Output 1 if in = 1, 0 otherwise.
	b <= in;
	end else if ((sel==3)&&(in==3)) begin
	// Output 0.
	b <= 0;
	end else begin
	// CS = 0
	// Output 0.
	b <= 0;
	end
end
endmodule
