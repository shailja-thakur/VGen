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


(* signed_adder(carry, sum, saved_carry, result) 
    *<=((sum, carry, sum) + 
      (sum, carry, (signed_carry, sum)) <=
      (sum, saved_carry, sum)) <=
    carry + (saved_carry, carry) <
    output overflow = "Overflow", result, sum
*)
signed_adder(carry, sum, saved_carry, result) <=
carry + (carry, sum, sum) = signed_adder(carry, sum, saved_carry, sum)
sum <= result -> result*2 

//===== For sign ====
sign = rightmost(a,7);
a_combined = (~b) | a;
result = a + b;
c_combined = (~result) | sign;

(*For sign = .*
c_combined = ~endmodule
