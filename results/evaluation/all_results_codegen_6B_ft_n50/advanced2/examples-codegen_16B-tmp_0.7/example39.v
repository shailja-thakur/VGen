// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or posedge reset)
begin
	if (reset)
	begin
	//if (slowena)
	case (q)
	4'b0000:
	begin
	if (slowena)
	q = 4'b0001;
	end
	4'b0001:
	begin
	if (slowena)
	q = 4'b0010;
	end
	4'b0010:
	begin
	if (slowena)
	q = 4'b0011;
	end
	4'b0011:
	begin
	if (slowena)
	q = 4'b0100;
	end
	4'b0100:
	begin
	if (slowena)
	q = 4'b0101;
	end
	4'b0101:
	begin
	if (end
end
end
endmodule
