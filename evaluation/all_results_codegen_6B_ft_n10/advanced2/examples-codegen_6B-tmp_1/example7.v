// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or posedge slowena or posedge reset) begin
	if (slowena || reset) begin
	case (q) //digit no.
0: // Case for d6
1: q <= q + 1;
1: q <= q + 1;
2: q <= q + 2;
2: q <= q + 2;
3: q <= q + 3;
// use a case instead of nested if to have a more generic template
default: q <= q; // return 0 for unspecified digits
endcase
	end
end
endmodule
