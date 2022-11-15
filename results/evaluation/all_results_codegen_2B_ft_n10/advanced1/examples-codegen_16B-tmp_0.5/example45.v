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


wire [7:0] s_temp;
wire [7:0] overflow_temp;
wire overflow_a;
wire overflow_b;

assign overflow_a = (a[7] == 1'b0) && (b[7] == 1'b1) && (s[7] == 1'b1);
assign overflow_b = (a[7] == 1'b1) && (b[7] == 1'b0) && (s[7] == 1'b0);
assign overflow_temp = overflow_a | overflow_b;

assign s_temp[7] = s[7] | overflow_temp;
assign s_temp[6:0] = s[6:0] + a[6:0] + b[6:0] + overflow_temp;
assign s[7:0]endmodule
