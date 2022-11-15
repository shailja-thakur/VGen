// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

reg [3:0] qbits;
always@(posedge clk or posedge reset)
begin
	if (reset)
	begin
	qbits = 0;
	q[3:0] = qbits;
	end
	else
	if(slowena)
	begin
	if (q < 4'b1001)
	begin
	q[0] = qbits[0];
	q[1] = qbits[1];
	q[2] = qbits[2];
	q[3] = qbits[3];
	qbits = qbits + 1;
	q[0] = qbits[0];
	q[1] = qbits[1];
	q[2] = qbits[2];
	q[3] = qbits[3];
	qbits = qbits - 1;
end
end
end
endmodule
