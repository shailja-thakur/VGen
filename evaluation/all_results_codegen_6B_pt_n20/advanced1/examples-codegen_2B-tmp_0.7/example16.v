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


// The final result is stored in the output s.
// Add the signed overflow to the output overflow as a value of overflow.


    signed_adder s;

    wire overflow;

    // signal variables
    signal overflow_signal : std::logic_and;

    signal overflow_value: std::logic_and;

    // input variables
    signal a_signal: std::logic_or;
    signal b_signal: std::logic_or;

    // output variables
    signal s_signal: std::logic_or;
    signal overflow_signal_out: std::logic_or;

    // assignments
    assign a_signal = a;
    assign b_signal = b;
    assign s_signal = s;
    assign overflow_signal_outendmodule
