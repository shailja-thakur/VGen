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



wire signed [8:0] abar;
wire signed [9:0] sum;
wire signed [9:0] sumbar;
wire overflow;
wire s_or_o;
wire [7:0] result;

assign abar = ~a;
assign sum = a + b;
assign s_or_o = sum[8] | sum[7];

assign sumbar = abar + b;
assign overflow = sumbar[9] ^ s_or_o;

assign result = overflow ? 8'hff : sum[7:0];

assign s = result;
assign overflow = result[7];

endmodule
