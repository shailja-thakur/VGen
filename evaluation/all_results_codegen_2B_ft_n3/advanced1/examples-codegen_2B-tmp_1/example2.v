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


//OCP state declaration

parameter unsigned borrow_zero = 1'b0;

parameter signed input_is_smaller = 1'b0;

parameter signed overflow_smaller = 1'b0;

parameter signed signed_add_smaller = 1'b0;

// function definitions for a 4 bit ripplecarry adder

function OPA4;
input i;
begin
OPA4 <= i;
end
endfunction

function OPB4;
input j;
begin
OPB4 <= j;
end
endfunction

function accepting_carry_out;
input adding_1;
begin
accepting_carry_out <= adding_1;
end
endfunction

localparam bitwidth=8;
localparam [4:0] socibits = 5;
localparam [4:0] linkedcombinethendmodule
