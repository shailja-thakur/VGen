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
task lfsr_task();

// our implementation of lfsr
reg lfsr_reg = 1;
reg r_index = 0;
always @ (clk, reset)
begin
    // update the register when pre_bits are at the next position
    if (reset && (r_index == 0x1F) && r_reg >= 0x1E)
        r_reg -= 1;
    else if (r_index == 4)
    {   r_reg++;
        //  We want to feed the LFSR the same value twice
        if (r_reg == 0)
            r_reg = 0x1C;
    }

    r_next = (r_reg >> 3) ^ r_reg;
    r_index = (r_index + 2) & 1;
    feedback_value = r_next ^ r_end
endmodule
