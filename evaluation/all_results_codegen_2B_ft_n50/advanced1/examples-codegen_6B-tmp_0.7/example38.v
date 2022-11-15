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


wire signed [8:0] ca_plus_mb;
wire db_plus_dz;

assign ca_plus_mb[7:0] = {1'b0,a[6:0]} + {1'b0,b[6:0]};
assign db_plus_dz[7:0] = {1'b0,a[6:0]} - {1'b0,b[6:0]};

assign s[7:0] = ca_plus_mb[7:0] + db_plus_dz[7:0]; //s[7:0] is the transmitted data

// if a[7] or b[7] is high then there is a signed overflow, else there is an unsigned overflow
assign overflow = a[7] ^ b[7] ^ s[7]; //signal whetherendmodule
