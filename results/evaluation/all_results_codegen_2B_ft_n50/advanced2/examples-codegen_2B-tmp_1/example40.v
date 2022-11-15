// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// Whenever the input ceases to be positive (negative edges) or has been reset back to 0,
// the counter is reset back to the initial value.

always@(posedge clk)
begin
	if(reset)
	begin
	q = 0;
	end
	else if(slowena && ~Qvect[4])
	begin
	q = q + 1'b1;
	if(q[3]) 
	q = 0;
	end
end

always@(posedge slowena)
	q= Qvect[0];

endmodule
