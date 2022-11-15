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


shared buffer con;

signed_adder #(
    M  = 128,
    L = 16
) add([
    shift_a inserted by user,
    shift_b user selected shift positions,
    result]) signed_path(
    M,
    C,
    Z,
    P,
    F,
    D=C*16-P-F,
    VV=1<<D,
    shift=[VV-1:0]:2 ^ (0xF bor VV) );

#code

#ifdef bp_solver=0
bp_storyg = "sp" ( int( circ_s ^ con ) );
#elif defaulterror=ERROR_OVERFLOW
#ifdef bp_solver= +=
#else
bp_storyg = "dag_overflow";
#endif
#elendmodule
