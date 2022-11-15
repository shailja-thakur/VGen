// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Each stage of the half adder consists of three wires (and three fan-in/out (F8) components on the left side):
input wire n_in,       // Zero-terminated 1-bit compatible input signal.
input wire ready_in,   // Ready input when "1". Resets the logic.
input wire enable_in,  // Enable bit, currently not used.

// Carry-out propagation. When a carry bit is output it enables the half adder's sum wire.
output wire { sum=1, carry=0 } out_{ leg, pos, net };

// Logic. 
output wire i9;     // internal ram was aux. 10 bits for working area
output logic s[9],   // Internal to logic. Linear half adder computation.
    s[8];       // Internal to logic. Linear half adder computation.
output logic i7,endmodule
