// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk) // calculation happens after input changes
if (sel)
{
   pos--;			// calculate new pos
   pos = pos & 7;		// mask to get out[1:0]
   prio_out = in + pos;	// add input bit to priority output
}
else
{
   prio_out = 0;		// assignment
}
endmodule
