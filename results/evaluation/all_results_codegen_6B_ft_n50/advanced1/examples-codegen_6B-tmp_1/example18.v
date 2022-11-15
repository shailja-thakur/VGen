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


// temporary storage for the while loops when adding the 2's
reg [7:0] c;
reg [5:0] f;
	
^	integer i; // used to indicate if a signed overflow ocurs
always @(*) begin
if (a[6]^b[7]) begin // indicate if a and b have a signed overflow
^ (c[6],f[3]); // indicate if c has a signed overflow
(*c[6],s[5])=(a[6]*(~b[7]));
(*c[6],s[4])=(a[6]*(~b[6]));
(*c[6],s[3])=(a[6]*(~b[5]));
(*c[6],s[2])=(a[6]*(~b[4]));
(*c[6],s[1])end
endmodule
