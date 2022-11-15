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
initial begin
    r_reg <= 1'd1;
    r_next <= 0;
    feedback_value <= 0;
    $display("*** r_reg = r_next = r_reg AND = 0, shadow sample = 1 (phase) ***");
end
// all registers have a default value of 0 (not init)

// A5-5
// The previous sample has taken a copy of the next-state register (rn_reg) which tends
// to be 1 (you make it 0 when you sample the interface):
initial begin
    uint8_t zero_default = r_next == 0 ? 1 : 0;
    r_next <= r_reg;
    $display("*** r_reg = r_next = r_reg AND = 1, shadow sample = 1 (phase) ***");
end

// R0-7/Q0/QUPR code
endmodule
