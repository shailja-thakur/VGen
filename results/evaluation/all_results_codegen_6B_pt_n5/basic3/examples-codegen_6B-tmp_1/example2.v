// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge rst)
if(x)
begin
switch(sel)
case 0:
dout = 0;
when(sel == 1) begin // Positive part
pos = pos % 3;
           // Negative part
dout = in%3;
pos = pos << 1;
           // Clear higher bits at pos
mod = ((dout >= 8) and (dout <=15) ? dout : 7);
dout = dout - mod;
           // Negate
dout = (8-dout);
if (mod != 0) dout = ~dout;
        else dout = 0;
           // Gain bits at pos
regs(int) c1 = 0 + 0x20;
c1 = c1 & reg;
c1 = 1 << reg.b11;
dout = dout + cend
endmodule
