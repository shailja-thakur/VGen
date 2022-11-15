// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
xor(w1,a,b);
xor(cout,w1,sum);
// on the XILINX FPGA, these values are connected
// from output to input.
endmodule
