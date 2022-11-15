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


	wire signed [7:0] a, b; //declare wires a and b
	wire signed [7:0] s; //declare wires s
	wire overflow; //declare wires overflow
	
	assign a = a;
	assign b = b;
	assign s = s;
	assign overflow = overflow;
	
	always @ (a or b)
	begin
	
	//if the most significant bit of a or b is high, the adder will consider it a normal number and won't consider it signed overflow
	//if the most significant bit of a or b is low, the adder will consider it signed overflow
	
	//if the most significant bit of a or b is high, the sum will be a signed overflow, in that case the overflow will be high
	//if the most significant bit of a or b is low, the sumend
endmodule
