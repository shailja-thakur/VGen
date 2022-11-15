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

   assign unsigned overflow {
           (a msb aka a[31:30],a[29:28] or a[27:26],a[25:24],a[23:22],a[21:20],a[19:18],a[17:16],a[15:14],a[13:12],a[11:10],a[9:8],a[7:6],a[5:4],a[3:2],a[1:0] msb zeroes) or 
           (b msb aka b[31:30],b[29:28] or b[27:26],b[25:24],b[23:22],b[21:20],b[19:18],b[17:16],b[15:14],b[13:12],b[11:10],b[9:8],b[endmodule
