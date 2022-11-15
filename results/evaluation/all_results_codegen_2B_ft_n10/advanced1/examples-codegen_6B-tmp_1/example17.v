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


// Fault setting mode,
// Type: fault set for the input from the ports a, b to the selection device that issues the fault to the output of the adder
// Mode: fault set when the internal sum of two inputs is greater of less than 2^31-1 - 8K
/* Type: fault set for the output of the adder to the selection device that issues the fault to the output of the adder
 Mode: fault set when a overflow occurs during the addition of the inputs */
 
always@ (posedge clk or negedge clk) // do busy wait if
 begin
   if (posedge count3) begin
       if (n[26] == 0) begin
           if (n[24] == 1) begin // error in positive
               n[21] <= a[7:0];
           end
           n[23] <= b[7:0];
           nend
end
endmodule
