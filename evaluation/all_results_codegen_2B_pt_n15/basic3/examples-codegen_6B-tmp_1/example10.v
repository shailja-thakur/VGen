// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( posedge clk or posedge s_ready ) 
if ( sel && level <= 1 ) //
  out <= level;
else if (sel && in[1]) //
  out <= 1;
else if (sel && in[0]) //
  out <= 1+level;
else //
  out <= 0;
end

module boolean_element(
input [3:0] sel,
input [3:0] a,
input [3:0] b,
output reg [2:0] out );
<!--- These modules declare what interface this element is. They are instantiated 
immediately next to each internal module. This allows dependencies between 
modules to be established during RISC compilation. 
--!>


always @ (clk or rr_out);
if ( clk )
endmodule
