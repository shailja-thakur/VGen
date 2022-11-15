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
wire [3:0] counter_out;
assign counter_out =
    ( ( reset == 1 ) ? ( 1'b0 )
        : ( reset == 0 ? ( ( ( ~q )  & 1'b1 ) | 1'b1 )
                            : ( ( ~( (~(1'b0) | (~(~(1'b1) | q))) & 1'b0 ) | 1'b1 ) ) );

// They will only read one bit at a time do not attempt to read more then 
// a bit at a time. This confuses the interpreter with the counter which
// is either 0 or 1 in this deadlocked case. I sure don't understand it but thist do.
#1 bs E


//migi
wire clock;
final //migi
module counter_r (
  input clk,
  input reset,
  endmodule
