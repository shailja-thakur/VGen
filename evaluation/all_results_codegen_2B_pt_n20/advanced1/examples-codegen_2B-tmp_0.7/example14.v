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


wire a_in, b_in, s_out, overflow_out;

signal a_sig : integer = a[7:0];
signal b_sig : integer = b[7:0];
signal s : integer = s[7:0];
signal overflow_sig : integer = overflow_in[7:0];


always @ (a_sig, b_sig, overflow_sig)
begin
    if ((a_sig == 0) && (b_sig == 0))
    begin
        s = 0;
        overflow_out = 0;
    end
    else if ((a_sig < 0) && (b_sig < 0))
    begin
        s = (a_sig + b_sig + 1) & 0xFF;
        overflow_out = overflow_end
end
endmodule
