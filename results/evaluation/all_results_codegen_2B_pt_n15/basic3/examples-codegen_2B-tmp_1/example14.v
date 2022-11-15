// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (*)(pos) internal en_one; 
always @ (*)(pos) internal en_zero; 
always @ (*)(pos) internal en_sel; 
always @ (*)(pos) internal en_tm; 
reg wire [2:0] out; 
initial begin 
    if (in[0] == 1) pos(0);
    else if (in[1] == 1) pos(1);
    else en_tm<pos,0>; 
end; 
always @ (*)(out) begin 
    if ((in == 1) and (in[0] == 1) and (in[1] == 1) and (in != pos)) en_sel<pos,0>; 
    else en_zero<pos,0>; 
    if ((in == 1) and (in[0] == 1) && (in[1end
endmodule
