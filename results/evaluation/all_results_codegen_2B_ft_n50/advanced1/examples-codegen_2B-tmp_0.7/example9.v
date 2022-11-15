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


 
wire [7:0] carryout;
wire [7:0] intermediate;
wire [7:0] y_intermediate;
wire overflow_bit;
 
carry_select_adder_8bit uut1(.a(a), .b(b), .carryin(carryout), .sum(intermediate), .carryout(carryout));

assign y_intermediate = intermediate & {8{~overflow_bit}};

or_8bit uut2(.a(y_intermediate), .b(carryout), .y(s));

assign overflow_bit = carryout[7];

endmodule
