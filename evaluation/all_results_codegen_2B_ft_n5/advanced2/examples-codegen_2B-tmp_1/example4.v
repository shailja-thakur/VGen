// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// (This is known as a "combinational logic" design)
// If the input ena is high, clear the q at the edge of the clock.
initial begin
q=4'b0000;
	repeat(8) begin
	#5 if (q!=4'b1010) begin
	$display("setup");
	q<=#5 {1'b0,q[3:1]};
	end
	else q<=#5 4'b0000;
	end
end
endmodule
