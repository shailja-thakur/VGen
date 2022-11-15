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


// Create bus equations.
// Create ten terms and connect them to mux wires.

wire carry1,carry2,carry3,carry4,carry5,carry6,carry7,carry8,carry9,n1;
wire sum_low,sum_high,ov;

// 2's complement terms from -128 to +127
assign carry1 = ~b[1]+1'b1; // ~B[1] is and not; +1 converts 1->1; -1 converts 0->-1
assign carry2 = ~b[2]+1'b1;
assign carry3 = ~b[3]+1'b1;
assign carry4 = ~b[4]+1'b1;
assign carry5 = ~b[5]+1'b1;
assign carry6 = ~b[6]+1'b1;
assignendmodule
