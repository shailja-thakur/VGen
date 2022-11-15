// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

//-- this module adds two bits
function half_adder( a, b, cout, sum ) { 

    int f = a + b;
    bool cc = a ^ b ^ f;

    // This is a half adder. A half adder adds two bits and produces a sum and carry-out.
    //
    // Case clock 24+4.
    // Case carry 1 set to ...
    // 
    // Case 0xff carry move to one.
    // Case vvv Carry move to one.
    //
    // High carry set to true.
    // Low carry set to true.
    // ----------------------------------------------------------------------
    // Case sum set to 12.
    cout <= f;
    sum   <= (f << 1) + cc;

}


//-- This module adds eight bits
function adder( a, b, cout, sum )endmodule
