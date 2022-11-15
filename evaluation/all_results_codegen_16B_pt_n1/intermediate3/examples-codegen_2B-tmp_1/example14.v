// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q

// on reset fine-tun the feedback value and assign to r_next if the output bits are toggled
$var r16 r1 = 0; pgm "lfsr_process.pl";
$outputs
    q:258 r_next;
    r_reg:63 r1;
    r_reg:0 r_next:64;
    $vcmp("r_regveq_0", r_reg[0]);
    r_reg:1 r_next:65;
    $vcmp("r_regvne_1", r_reg[1]);
    r_reg:2 r_next:66;
    $vcmp("r_regvequ_2", r_reg[0], r_reg[2]);
    r_reg:1 r_next:67;
    $vcmp("r_regvgt_1", rendmodule
