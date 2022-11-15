// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk)
begin
  case(in)
    1: pos <= 0 ? pos <= 1'b0 : b <= 1'b0;
	  case(~in)
       1'b1: pos <= 6'b01 ? pos <= 2'b00 : b <= 2'b01;
    2'b2: pos <= 7'b01 ? pos <= 2'b01 : b <= 2'b10;
    3'b3: pos <= 7'b11 ? pos <= 2'b10 : b <= 2'b11;
    default: pos <= 3'b00 : b <= 1'b0;
    endcase
  end
end

//
module priority_encoder2( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b toendmodule
