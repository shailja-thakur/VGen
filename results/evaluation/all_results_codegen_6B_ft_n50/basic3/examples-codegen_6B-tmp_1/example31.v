// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) // or 
begin: pri_enc_case
case (sel) //In verilog, can only have case blocks inside if and else blocks
1'b1: pos = 2'b00; //If sel is 1, output 0
1'b0: pos = {in[1],in[0]}; //If sel is 0, output the bit inputs
endcase
end 
endmodule
