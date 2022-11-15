// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); // sum is a 32 bit register

initial begin
    a = 0xffffffff;
    b = 0xffffffff;
    sum = 0xffffffff;
end

// This is a full adder. A full adder adds two 32 bit registers and produces a sum and carry-out.
module full_adder( 
input a, b,
input carry_in,
output cout, sum ); // sum is a 32 bit register

initial begin
    a = 0xffffffff;
    b = 0xffffffff;
    sum = 0xffffffff;
    carry_in = 0;
end

// This is a half subtractor. A half subtractor subtracts two bits and produces a carry-out.
module half_subtractor( 
input a, b,
input carry_in,
output cout, carry_out ); // carry_out isendmodule
