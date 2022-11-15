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


wire s[0]; // perform the addition on two initially zeros.
 assign s=a+b; // you'll get the answer in the form of sinfo. 
assign overflow=s[7]; // since s is an infinty number or greater, it must be high because d and c are low.
 //(c+d) 

// if the ud segment propagates logic high, add 3 and 2. Blocking cont. assign the result to s. 
// if the q segment propagates logic high, add 3 and 2. If the q segment isative, Blocking cont. assign the result to s. 
/*Cont. version of the priod Mux*/
always @* 
	if((c&d) == 1 || (b[0]&a[0]) ==1)
	begin
	s=(a-b)+3; 
	//send
endmodule
