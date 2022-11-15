// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge enable, "old_state", "old_val")
         begin
           if in == 0b01 then pos <= pos + 1 else disf <= pos + 1;
	   else if in == 0b10 then disf <= pos;
           else disf <= pos + 1;
	   old_state <= in;
           old_val <= in << 2;
         end
endmodule
