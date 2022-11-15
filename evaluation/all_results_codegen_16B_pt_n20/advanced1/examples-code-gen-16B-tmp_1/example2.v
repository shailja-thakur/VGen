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

    parameter [7:0] init_state = 0;

    reg [7:0] flip_flop; 

    always @(a or b)
        begin
        flip_flop = a - b; 
        s = (~a) + b + 1;
        end

    // assign overflow = |a + 1'b1| - |b + 1'b1|; 
    assign overflow = 1'b0;
    // assign overflow = a[7] &amp; b[7] | s[7]; // wrong 


//assign overflow = a[6] | b[6]; 
endmodule
