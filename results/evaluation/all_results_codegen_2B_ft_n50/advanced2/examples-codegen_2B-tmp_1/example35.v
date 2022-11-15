// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
 // Every x clk pulse set q to the value q + 1.
 always @(posedge clk) begin : counter_stuff
 if (reset | ~slowena ) begin
 q <= 0;
 end
 else if (~reset & slowena) begin
 q <= q + 1;
 end
 end
 endmodule// Design a decade counter that counts from 0 through 9, inclusive.

module decade_counter(
��elect click_adder(slowena start, clk, reset, q1);
��elect count_slow(slowena q0,clk,reset,q0);
�ç¹û q0µÄÊý¾Ý´á³¤RAM,则q0µÄq2,q0µÄq3,q0µÄq4,q0µÄq5,q0endmodule
