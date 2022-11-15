// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
reg [3:0] a = 1;
always @(posedge clk)
enable SELEN#;
  if (reset) begin r <= 1; end
else if (r==12) begin r <= 1; end
else begin
   if (r == 1 || r == 12) begin r <= r+1; end 
   else begin r <= r+1; end
</pre>

Behavior:

* <code>a</code> keeps the current value
*   <var>r</var="" ,1> is the previous value
*   <var>q</var="" ,1> is the current
*   <var>r</var="" ,12> is the future value
* <em>which is a random parameter</em> that does not influence the behavior of the hardware

On reset, this counter's output value is <code>01</code>end
endmodule
