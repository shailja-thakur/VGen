// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


// General signal declarations

// Claue signals
reg [8:0] bits_a;
reg [8:0] bits_b;
reg [8:0] sum_result;
reg overflow;

initial
begin
sum_result <= 0;
overflow <= 0;
end

always @(a or b)	// this combinational block will only be executed once
begin	 // take care that bits_a, bits_b and sum_result are the same length
	overflow = 0;
	//if input a or b are zero, then add 0 to the sum result and the overflow to the output
	if (a == 8'h00 & b == 8'h00) 
	begin
	sum_result <= 8'h00;
	overflow <= 1'h0;
	end
	//if a is negative but b is not thenendmodule
