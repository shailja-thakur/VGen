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




wire [7:0] s_input_sign;
double_flipflop signed_add(s_input_sign[7:0],a[7:0], b[7:0], (78'b000000000000));

wire overload;
wire s_over;

assign overflow = a[7] & b[7] & ~s_input_sign[7];

always@(*)
begin
assign s[7:0] = s_input_sign[7:0] + (overflow? 1'b1 : (s_over? 1 : 0) );
end

assign s_over = (~a[7] & b[7] & s_input_sign[7]) | (a[7] & ~b[7] & ~s_input_sign[7]);


////////////////////////////////////////////////////////////////////////
// End design


endmodule
