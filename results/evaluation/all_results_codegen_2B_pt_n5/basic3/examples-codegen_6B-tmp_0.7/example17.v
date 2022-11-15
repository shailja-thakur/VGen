// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(posedge clk or negedge rst)
if(in[0] && in[1] && rst == 0)
begin
  case(in[2])
    based_low <= pos < based_high;
    case(in[3])
      based_high <= pos < based_high+1;
      case(in[4])
        based_high+1 <= pos;
        case(in[5])
          based_high-1 <= pos <= based_high;
        endcase
      endcase
    default:
      case(in[2])
        based_low <= pos <= based_high;
        case(in[3])
          based_high-1 <= pos <= based_high;
        endcase
      endcase
  endcase
end
endmodule
