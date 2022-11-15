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


(* inputs *)
    // Initial state
    a [7:0] = 0b00000111;
    b [7:0] = 0b00000111;
    overflow = 0;

(* outputs *)
    s [7:0] = 0;
    overflow = 0;


// check i for overflows
    while(b [7] == 0)
    {
        // if b is still at most 7 half bits we can just make a = a + b
        s [7] = a [7] + b [7];
        // check if there has been an overflow in s
        if(a [7] < s [7] )
            overflow = 1; 

        a [7] = a [6:0];
        b [7] = b [6:0];
    }
    
// carry the last bit
endmodule
