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


// Equal unless a[i] = 1. A circle addition requires bit i - 1 of a to be 1. Thus we use 1.A[7:1] + A[0] to calculate A.
assign A = a ^ {1'b0, a};
assign A[7:1] = A[7] ^ a[0]; 
 // We want the value of both 0 and 1 add to have the same output. 
assign q = 1;


unsigned_adder uadd0(A[0], q, 1, B[0], outp[0], overflow0);

generate
	genvar i;
	for (i=1; i<7; i=i+1) 
	begin: num_adder
	unsigned_adder uadd1(A[i], q, A[i-1], B[i], outp[i], overflowend
endmodule
