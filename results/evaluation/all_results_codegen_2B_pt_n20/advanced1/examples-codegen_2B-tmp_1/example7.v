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



swire d  ; 
swire p1 ; 
swire p2 ;

void
unsigned_adder(
    input [7:0] a,
    input [7:0] b,
    output [7:0] s);
  
void
signed_adder(
    inout  [7:0] s,
    inout  [7:0] overflow);


if s[0] = 0 and overflow == 1 then
    s[31] = a[31] + b[31] else 
    not overflow ;
end if


if s[1] = 0 and overflow == 1 then
    s[30] = a[30] + b[30] else 
    not overflow ;
end if


if s[2] = 0 and overflow == 1 then
    s[29] = a[29] + b[endmodule
