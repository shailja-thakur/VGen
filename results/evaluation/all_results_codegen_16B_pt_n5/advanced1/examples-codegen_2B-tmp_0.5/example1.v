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
wire [7:0] sum;
wire overflow_temp;

// Create the 8-bit two's complement of the sum of a and b
assign s_temp = {~sum[7], sum[6:0]};

// Create the 8-bit two's complement of the 'a' parameter
assign overflow_temp = {~overflow, a[7]};

// Create the 8-bit two's complement of the 'b' parameter
assign sum = {~b, a[7:0]};

// Create the 8-bit two's complement of the 'overflow' parameter
assign overflow = {~overflow_temp, a[7]};

// Create the 8-bit two's complement of the 's' parameter
assign s = {~s_temp, a[7:0endmodule
