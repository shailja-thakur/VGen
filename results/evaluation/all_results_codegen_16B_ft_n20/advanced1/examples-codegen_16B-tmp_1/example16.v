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

 wire [7:0] prediction_a;
 wire [7:0] prediction_b;
 wire [7:0] prediction_s;
 wire prediction_overflow;

 wire lb_a, lb_b;	
 wire [7:0] sb_a, sb_b;
 wire [7:0] se_s_a, se_s_b;
 wire [8:0] unsign_db_a, unsign_db_b;
 wire sign_a, sign_b;
 wire top_line;

 assign top_line = (a[7] == 1'b1) || (b[7] == 1'b1);
 assign format_error = (a[7] == 1'b0) || (b[7] == 1'b0);
 
 // the sign-bits are processed first to match Verilog RTL expectationsendmodule
