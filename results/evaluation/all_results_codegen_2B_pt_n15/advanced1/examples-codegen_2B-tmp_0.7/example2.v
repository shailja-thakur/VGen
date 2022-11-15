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


signal unsigned_sum;
signal signed_sum;
signal overflow;

// for each inputs
    for (i = 0; i < 7; i++) {
    	//  for each other inputs
        for (j = 0; j < 7; j++) {
        	if (((a[i] & 0x80) == 0x80) && ((b[j] & 0x80) != 0x80)) {
        		unsigned_sum = a[i] + b[j];
        		// if (((a[i] & 0x80) == 0x80) && ((b[j] & 0x80) == 0x80)) {
        		// 	unsigned_sum = a[i] + b[j];
        		// }
        	}
        	else if (((a[i] & 0x80) !=endmodule
