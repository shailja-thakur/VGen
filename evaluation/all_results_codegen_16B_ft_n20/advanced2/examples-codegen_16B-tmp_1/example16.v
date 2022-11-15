// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk ) begin
	if(reset)
	begin
	q <= 0;
	end
	else if(slowena && !reset && q <4)
	begin
	q <= q + 1;
	end
end
// end module
module count_slow_syn(
 dst,
 clk, ena, clear);
 output [3:0] dst;
 input clk;
 input ena;
 input clear;

 wire [3:0] q;
 count_slow clk1 ( clk, ena, clear, q[3:1] );
 mux4_1 m1(q[3:1],q[3:2],q[1:0] ,dst);

endmodule
