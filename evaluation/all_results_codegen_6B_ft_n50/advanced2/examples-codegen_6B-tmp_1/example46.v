// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//In summary:
// A clock enable signal tells which digits to output. 
// A clock enable which is too fast (multiples of the 100mhz clock) is ignored.
// A clock enable which is too slow (multiples of the 1mhz clock) dumping the digits to save power. 
// If the enable times is 1msec, then the digits will be displayed for 500ms. 

always @(posedge clk or posedge slowena or posedge reset)
begin
	if (reset)
	begin 
	case (q) 
	4'b0000: q = 4'b1000; 
	4'b0001: q = 4'b1001; 
	4'b0010: q = 4'b1010; 
	4'b0011: q = 4'b1011; 
	4'b0100: q = 4'end
end
endmodule
