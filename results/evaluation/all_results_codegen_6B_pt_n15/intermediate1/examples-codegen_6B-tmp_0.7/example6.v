// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_inst() {
    #include "half_adder.verilog"
}

endmodule
