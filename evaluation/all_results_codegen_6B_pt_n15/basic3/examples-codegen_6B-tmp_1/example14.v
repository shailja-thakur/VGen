// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(posedge clk or posedge rst)
  begin
    case(in)
        when 0x00000 00001  then out =  1'b1
        elseout	beq     z
        endcase

        when 0x00100 00101  then out =  1'b2
        elseout	beq     z
        endcase

        when 0x0100 00010  then out =  1'b3
        elseout	beq     z
        endcase

        when 0x1000 00110  then out =  1'b4
        elseout	beq     z
        endcase

        when 0x0000 00000  then out =  1'b6
        elseout	beq     z
        endcase

        when 0x1000 00000  then out =  1'b9
        elseout	beq     zendmodule
