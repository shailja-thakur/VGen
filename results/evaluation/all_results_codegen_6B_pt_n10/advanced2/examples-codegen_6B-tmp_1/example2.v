// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
  always @(posedge clk)
  begin
  	if (reset)
  	q <= 0;
  	else if (slowena)
  		if (q < 9) {
  		  q <= q + 1;
  		}
  end

// Always-driven pin instantiations for the LEDs:
// indices under 'slowena' are high, others low.
	// a = 1, b = 2, c = 3, d = 4, e = 5, f = 6, g = 7, h = 9
	assign slowena = { b, c, d, e, f, g, h };
	
	// h is the header signal enumeration, so this indicates which signal is 
	// changing when the header changes. the signals are called a, b, c, d, e 
	// respectively.
	atom header = {endmodule
