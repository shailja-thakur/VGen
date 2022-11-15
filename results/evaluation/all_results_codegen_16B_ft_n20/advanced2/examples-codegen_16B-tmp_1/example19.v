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
	if(reset)
	begin
	// return '0'
	q = 'd0;
	end
	else
	begin
	if(slowena)
	begin
	if(q == ('d9))
	begin
	// return '9'
	q = 'd9;
	end
	else
	begin
	// return (q + 1)
	q = (q + 1);
	end
	end
	end
end
/*
// The decade counter should be an up/down counter. 
// Up/down should depend on whether reset is active or not. 

always @(*) 
begin 
	if(reset) 
	begin
	q = ('d0
	else 
	begin
	q = (q + 1)
end
end
end
endmodule
