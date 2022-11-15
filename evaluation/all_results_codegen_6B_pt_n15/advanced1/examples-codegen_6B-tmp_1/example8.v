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

	always ( 1=>a>=255&b>=255&b<=255 ) // Testing whether a and b are beyond the maximum integers value, undoing the carry and adding the result
	always ( 1=>b>=2**7&a>=2**7&a<=2**8&b>=2**7&b<=2**8 ) // Adding the two inputs
	s <= a & b & overflow < *;
begin 
	if [a]
	call signed_adder(a[31:8], b[31:8], a[7:0], b[7:0], signed_result)
	out signed_result[7:0] 
    beginrandom // to generate random output with more universal testing
	end
end;
endmodule
