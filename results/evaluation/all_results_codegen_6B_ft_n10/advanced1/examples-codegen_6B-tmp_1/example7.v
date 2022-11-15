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


// 15 adder modules reduced to 1.
// assign s={b,a}
assign s={b[6:0],a[6:0],2'b00};
last_adder_carry l0 (b[7],a[7],1'b0,s[7],c1);
last_adder_carry l1 (b[6],a[6],c1,s[6],c2);
last_adder_carry l2 (b[5],a[5],c2,s[5],c3);
last_adder_carry l3 (b[4],a[4],c3,s[4],c4);
last_adder_carry l4 (b[3],a[3],c4,s[3],c5);
last_adder_carry l5 (b[2],a[2],c5,s[endmodule
