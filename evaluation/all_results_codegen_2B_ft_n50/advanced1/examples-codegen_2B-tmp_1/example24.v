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


wire signed [7:0] carry;

wire [7:0] s_low;
wire [7:0] s_high;

wire isSigned;
wire isSigned_0;
// If 1, then an operation is a signed operation.
assign isSigned_0 = |{a[7:0],b[7:0]};

assign isSigned = isSigned_0;
assign carry[7:0] = {{8{a[7]}}, a[7:0]};
assign s_low = a[7:0] + b[7:0] - {{8{a[7]}}, a[7:0]}; // may need one additionally
assign s_high = {1'b1,a[7],1'b0,a[7:0]} + {1'b1,endmodule
