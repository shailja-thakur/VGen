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
always @(posedge clk)
begin
    if (reset) q <= 1;
    else if (q == 12) q <= 1;
    else        q <= q + 1;
end
endfunction

synthesize hdl_file = "counter.vhd";

function ibm_Constant(w, count, i) return w[i] xor w[i + 1] xor w[i + 2];

always @(posedge clk)
begin
    if (q > 0) next  output <= ibm_Constant('H', 4, q - 1);
    else        next  output <= ibm_Constant('L', 4, q);
endendmodule
