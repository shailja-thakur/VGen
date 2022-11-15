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


signed_adder_template(
    next_state_a=a,
    next_state_b=b,
    next_state_s=s,
    next_state_overflow=overflow,
    
    state_a = ~s & a,
    state_b = ~a & b,
    state_s = ~a & ~b & ~(s & b),
    state_overflow = a | b | s,
    
    next_state_a_next = ~next_state_a & next_state_a,
    next_state_b_next = ~next_state_b & next_state_b,
    next_state_s_next = ~next_state_s & next_state_s,
    next_state_overflow_next = ~next_state_overflow & next_state_overflowendmodule
