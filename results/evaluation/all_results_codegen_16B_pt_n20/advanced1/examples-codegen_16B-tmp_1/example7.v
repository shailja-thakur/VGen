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

	// Z = 0 if (a[7] + b[7]) is greater than s[7]

	assign tmp  = a[7:0] + b[7:0]; 
	assign tmp2 = tmp[7:0] + s[7:0];
	assign Z    = 0;
	if (tmp[7:0] > s[7:0]) {
		assign Z = 1;
	}
    assign s[7:0] = tmp [7:0];
    assign overflow = tmp2[7:0];
    assign tmp[7:0] = tmp [7:0] - 256;
    assign tmp2[7:0] = tmp2[7:0] - 256;
    run;

signed_adder  300 : bool fundsBorrow;


    // output[6:0endmodule
