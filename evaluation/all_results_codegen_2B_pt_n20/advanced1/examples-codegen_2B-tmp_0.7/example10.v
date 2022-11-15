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


    signed_adder.func: 
    wire a_bits;
    wire b_bits;
    wire s_bits;
    wire overflow;

    always @ (posedge posedge)
    begin
        a_bits = a[7:0];
        b_bits = b[7:0];
        s_bits = s[7:0];
        overflow = ((a_bits ^ b_bits) & (a_bits ^ s_bits) & (a_bits ^ s_bits)) == 0;
        s_bits = a_bits + b_bits;
        if (overflow) s_bits = ~s_bits;
    end


endmodule
