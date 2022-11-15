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

  assign overflow = (a[7] < b[7]) | (s[7] < a[7])| (s[7] < b[7]);

in(in0, in1) out(soft_out0, out0) 
{ 
  in { 
    input sign_in { 0, 1 };
  }   
  out(printf("Softout0, overflow ")) { 
    input overflow_in { 0, 1 };
  }
}

control ck_q03 { 
  input [7:0] sig { 00, 01, 10, 11 };
  output qout { q00: bit lane, q01, q10, q11: soft_out0 output soft_out1 }; 
}

razerr(err_q03; q03); 
in0 { 
  input sign_in {endmodule
