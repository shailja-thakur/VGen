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


wire [7:0] s;
wire overflow;

reg signed [7:0] b_local; // used for comparing if the b in the statement is signed or unsigned

always @ (a or b) begin
 if (a[7] == b[7]) begin // if a and b have opposite signs //(a[7]^b[7]), //the exponent will be the same, but significand won't be.
 if (a[6:0] > b[6:0])	
 b_local <= (~b) + 1'b1; 
 else
 b_local <= b;

// B will always be 2s comp, but will be 0s comp in the statement. 
 
 s = (a < b_local) ? (~a + 1'b1) : a;	 
 overflow = 0;
 end
else begin 

send
endmodule
