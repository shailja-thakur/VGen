// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [1:0] b;
always @(posedge clk) begin
  if (in[0]) begin
    b <= 1;
    case(in[1])
      case(in[2])
        case(in[3])
          b <= 2;
        endcase
      endcase
    end
  else
    b <= 0;
  pos <= b;
end
endmodule
