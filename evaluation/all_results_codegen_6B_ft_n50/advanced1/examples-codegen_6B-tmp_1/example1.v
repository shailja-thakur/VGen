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


// 8-bit signed adder

assign s = a + b +
	// If a or b is negative, just add a negative sign to the sum
	//if (is_signed && (a[7] ^ b[7]))
	//	s = (~a[7] & ~b[7]) ? -s : s;
	//if (is_signed && (a[7] ^ b[7]))
	//	s[7] = ~a[7] & ~b[7];
	//add two numbers a and b, or numbers a and b fcw depend on the sign of a and b be 
	//defined by the sign of sum
//assign s = a + b;
//assign sign_of_num_b = (div_num[7]) ? 1'b1 : 1'b0;

//assendmodule
