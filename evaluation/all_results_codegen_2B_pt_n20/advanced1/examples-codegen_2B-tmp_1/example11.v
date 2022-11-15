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


enum Operation { Add, Subtract };

sign applied;
HLS sign_change[] = {ms_decode, ms_encode};
ops_handler Ops[] = {
 {
    SIGNED_ADD, 
    func::signed_adder(a, b, output_value, unsigned_overflow),
 },

 {
    SIGNED_SUBTRACT, 
    func::signed_adder_subtract(a, b, output_value, unsigned_overflow),
 }};

task main()
{
    prepare {
    a=0b00001111;
    b=0b00000010;
    s = 0;
    unsigned_overflow = false; 
    
    applied = SIGN_TYPE::NONE;
    }

    to_sign::task prepare()
    {
      a=0b00001111;endmodule
