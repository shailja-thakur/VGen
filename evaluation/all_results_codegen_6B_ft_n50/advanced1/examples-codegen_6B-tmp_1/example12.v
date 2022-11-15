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


wire b_extended [7:0] b_extended_from_carry; 

// ensures that b is 2s extended and added to a[7:0] to form b_extended
carry_extender b_carry_extender(
.carry_in(b),
.db(b_extended)
);

// this block generates the initial carry based on the 2s extended sum
initial_carry_adder a_0(
.a(a),
.b(b_extended),
.carry(s[0]),
.sum(s[1])
);

// this block adds the second carry after the first carry is generated to form integers a and b

carry_adder a_1(
.a(a),
.b(b_extended),
.carry(s[2]),
.sum(s[3])
);
endmodule
