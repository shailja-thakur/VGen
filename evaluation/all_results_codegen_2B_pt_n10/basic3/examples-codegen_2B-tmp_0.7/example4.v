// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin
    pos[1] = sel;
    in[1] = in[1] | in[2] | in[3];
    pos[0] = in[1] >> 3;
end
);
*/
/*
// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin
    pos[1] = sel;
    in[1] = in[1] | in[2] | in[3];
    pos[0] = in[1] >> 3;
end
);
*/

int main() {
  
  priority_encoder x(a,endmodule
