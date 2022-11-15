// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// Edge triggered sequential code section

always @(posedge clk)
	begin
	if (reset)
	q <= 0;
	else
	case ({slowena,q[3]})
	2'b00: ;
	2'b01: if (q[3] < 5) q[3] <= q[3] + 4'b1;
	2'b10: if (q[3] > 1) q[3] <= q[3] - 4'b1;
	endcase
end // always

endmodule
