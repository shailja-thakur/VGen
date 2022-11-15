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

  wire carry_1;
  wire was_1;
  addsub the_comparator_add3 (a[0],b[0],carry_1);
  addsub the_compare_3_3 (a[1],b[1],carry_1);
  addsub the_compare_2_2 (a[2],b[2],carry_1);
  addsub the_compare_2_1 (a[3],b[3],carry_1);
  
  and (overflow,carry_1,~overflow);
  and (underflow,carry_1,overflow);
  and (overflow,rslt_out,rslt_out_tmp);
  or (inf,carry_1,logical_out,carry_1not);
  not (logical_out_1,logical_out_endmodule
