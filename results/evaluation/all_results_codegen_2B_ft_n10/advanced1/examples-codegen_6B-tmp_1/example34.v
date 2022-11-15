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


//if overflow is positive it means we have a signed overflow
//if most signals of a are high and s is low then it means we have a signed overflow
	
wire signed [7:0]e1;	
assign e1[63:55] = {7{a[7]}} & b[7:0];	
assign e1[7:0] = {8{a[7]}} + {8{b[7]}} + {64{op}} ; 

wire n1, n2, n3, n4, n5, n6, n7, n8 ; 
	
adder_1b a0 (n1, n2, a[0], b[0], op);
adder_1b a1 (n3, n4, a[1], b[1], n1);
adder_1b a2 (n5endmodule
