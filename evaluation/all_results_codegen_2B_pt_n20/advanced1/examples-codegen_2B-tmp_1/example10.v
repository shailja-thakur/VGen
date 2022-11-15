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


    
    
    
// $Log: signed_adder.v,v $
// Revision 1.3  1998/05/22  00:29:52  killough
// Improve library error reporting (linked-list construction is std::map now)
// (phase 2 - works; at least I think they work)
//
// Revision 1.2  1998/05/22  00:16:52  killough
// clean up library to conform with original number_added
//
// Revision 1.1.1.1  1998/05/09  23:07:11  killough
// move everything into the engine
//
// Revision 1.1.1.1  1998/05/08    23:08:15

//
//      (5)
endmodule
