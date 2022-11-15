// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
case (in)
3'd0 : pos = 2'd0; // Lowest priority. No assignment.
3'd1 : pos = 2'd1; // 2nd lowest priority. assign b=1
3'd2 : pos = 2'd2; // 3rd lowest priority. assign b=1 and a=0
3'd3 : pos = 2'd3; // 4th lowest priority. assign a=0 and b=1
default : pos = 2'd0;
endcase

end

endmodule
