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


// positive overflow from a + b report the sign of s
// negative overflow from a - b report NX card

// saturate to 32bits if number is to big to use single 256 bit number. 

 asigndecoder sadd (.in(s),.out(poss));

 wire ne ; // wrong output , we have a bool instead of a number 
 sdecoder scl (.in(poss[7:3]),.out(ne),.errorbits(overflow));
 ne=!(ne);
	
assign signe= p[3]^nh; // a nh xor bx sets a sign if b is negative


assign s[2:0]= { p[3],poss[3],nh ,poss[4]^p[2]};

assign s[5:3]= { nne,nppp,nhzendmodule
