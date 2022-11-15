// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or posedge pos[1])
begin
 if {~in[2],~in[1],in[0]} > 0 
 assign pos[1] = 1'b1;
 else
 pos[1] = 1'b0;
end 
// 2-to-1 mux: select based on the value of pos[1]
always @(in or pos[1])
begin
 case( pos[1] )
 1'b0: assign pos[0] = in[0];
 1'b1: assign pos[0] = in[1];
 endcase
end
endmodule
