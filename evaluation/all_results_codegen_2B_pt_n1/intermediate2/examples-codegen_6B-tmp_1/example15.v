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
_hd_module counter_module = ( .clk(clk) .for_free_input() .clk(reset) .q(q) );

// The modules above are identical to the counter blocks found in Chapter 5.  
// The voltage divider blocks found in Chapter 6 extend these modules by using 
// input hold resistors and inverting them when necessary. 

// Here are the channels that circulate between this voltage divider and the 
// standard voltage like a voltage divider. 
wire c_q1, c_q2, c_q3, c_q4, c_q5;

// created at clock frequency of 100Mhz 
begin : default
 	c_q1 = not q;
 	c_q2 = c_q1 && not q;
 	c_q3 = c_q2 && not q;
 end
endmodule
