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


always @ (posedge clk or negedge reset) if (state == 0) // rising edge
begin
  int t= (b&128) | (a&127); 
  int usersimthis = b&64;
  usersimthis >>=2;
  if( usersimthis is 0) 
  {
    casevalue = chkdif(t);
    if(casevalue is 1) {               //primo caso: a, b >= 0
        case_positive=case_positiveor(0);
        case_negative=case_negativeor(1);
    } 
    else if(casevalue is enabled) {      //secondo caso: a, b < 0
        case_positive=case_positiveor(1);
        case_negative=case_negativeor(0);
    } 
    else if(casevalueend
endmodule
