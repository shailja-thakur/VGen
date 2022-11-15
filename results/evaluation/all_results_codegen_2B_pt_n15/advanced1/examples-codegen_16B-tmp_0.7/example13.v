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

	wire [7:0] carry;
	
	assign carry[0] = 0;
	
	generate
	genvar x; // used to iterate over the case statements
	
	// iterate over the case statements
	for(x=0;x<8;x=x+1)
	begin: gen_cases
	
	// define the case statement
	case(x)
	
	// add the most significant bit of b to the most significant bit of add and propagate the carry
	0: begin
	assign {carry[x+1],s[x]} = a[x] + b[x] + carry[x];
	assign overflow = carry[x+1] ^ carry[x];
	end
	
	// define default case for unexpected input values
	default: begin
	assign {carry[x+1],end
end
endmodule
