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


// wire for ringing
wire za, next_borrow, next_sum;

wire one_bit_borr, one_bit_sum;

// assign the connecting wires between the mux and the single bit adder
assign za = (a[0]);
assign next_borr = (a[7] ^ b[7]);
assign next_sum = (a[7] ^ b[7]);

// instantiate the single bit adder module and connect its output to a mux that sends out a and b bit values
// if the incoming peripherals are one-bit, only 1 bit is added. Further, if input is zero, just output 0
// call the wired wires and also observe that if both peripherals are one-bit and sum is high, overflow will occur

wire [1:0] sum_mode = (b[0] & a[0endmodule
