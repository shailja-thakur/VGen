// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Note: this implementation only shifts the q register using Verilog left shift operators (<<).
// To manually count up we could simply sum the contents of each q register (count_slow+N). 
always @(posedge slTime)
begin
if (reset)
	q = 4'b0000;
else if (slowena && (q!==4'b1001))
	q = q << 1;
// for compulsory generation of the slow clock
else if (!(slowena & (q!==4'b1001)))
	q = 4'b0000;
end

endmodule
