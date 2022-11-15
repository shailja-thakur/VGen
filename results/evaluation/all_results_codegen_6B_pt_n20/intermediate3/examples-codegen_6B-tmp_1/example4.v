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
begin
    // begin
    // initial value of register
    // uses a lfsr with seed value 4 and taps at bit positions 5 and 3
    if (reset)
        r_reg <= 4;
    else
        r_reg <= r_next;
    
    {
        while (1)
        begin
            if(clk)
                r_next = (r_reg == 0) ? 1 : *r_reg ^ 2; 
            else
                r_next = *r_reg;
            
            feedback_value = (r_next & (3 << 2)) | 0x20;
            // precede the update with "feedback"
            r_reg = ((r_next << 5) & 0x80) | (r_next >> 4);
            // right shift 5 bits
            
            // take least significant 3bits of r_end
end
endmodule
