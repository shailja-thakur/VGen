// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
assign inc_q = (~reset)&(slowena)&((~q[3])|q[3]&(~q[2])|q[2]&q[1]&(~q[0]));

always@(posedge clk)
begin
if(reset)
q <= 4'b0000;
else
if(inc_q)
q <= q + 4'b0001;
// repeat of the above line for the other bits.
end

endmodule
