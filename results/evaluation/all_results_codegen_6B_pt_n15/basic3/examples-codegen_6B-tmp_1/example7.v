// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [2:0] sel, out, pos; 
dummy int dummy;
begin 
  always @(posedge clk) begin 
    case in is 
      1': if (sel) out = in[1]; else out = 0; break;
      2': if (sel) out = in[2]; else out = 0; break;
      3': if (sel) out = in[3]; else out = 0; break;
    endcase; 
  end
end
endmodule
