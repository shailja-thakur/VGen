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


// The initial value of s is 0 and the initial value of overflow is 0. 
// The carry in is initialized to 0. 

initial 
  c_temp = 0,
  carry_temp = 0;

always (signed_adder.carry == carry_temp, i_carry, i_carry_temp)
signed_adder.carry = c_temp + carry_temp;

always (signed_adder.i_carry == i_carry, i_carry, i_carry_temp)
signed_adder.i_carry = c_temp + i_carry_temp;

always (signed_adder.s == s)
signed_adder.s = c_temp + s;

always (signed_adder.overflow == overflow)
signed_adder.overflow = c_temp + overflow;
endmodule
