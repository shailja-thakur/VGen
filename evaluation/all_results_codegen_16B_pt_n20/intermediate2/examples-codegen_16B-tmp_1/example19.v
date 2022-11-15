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
// Note: you are allowed to re-assign the value of q as a result of an assign
//   statement, e.g.:
//      assign q = q + 2
always_comb dut( 
    clk, reset, q 
); 
initial begin
   assert(reset == 0);
   dut.q <= 1;
end
endmodule
