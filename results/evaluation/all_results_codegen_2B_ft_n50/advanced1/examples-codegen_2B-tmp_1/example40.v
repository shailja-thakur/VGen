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



// Using the signed addition for non-negative numbers is atomic
wire unsigned_a_plus_b;//upper bits of intervals a and b
//Using the interval representation a and b as shown above atomic signed addition is possible

assign unsigned_a_plus_b = a+b; //overflow signal occurs if a or b is too large for the arithmetic addition

//Check overflow
	//This is done in function and never here
assign overflow = (a_overflow == 1) ? 1 : 0;
	 


//This is different from interval adder
// Expending time is twice that of interval adder
always @(a, b, unsigned_a_plus_b)
begin
	if(b==1'b0) 
	begin
//Expend time is 1
	s = {1'b0, unsigned_a_plus_b};
	end
end
endmodule
