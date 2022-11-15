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
always @(posedge clk)
  begin
    // clear feedback_value
    feedback_value = 0;

    if ( reset == 1'b1 ) begin
        r_reg = 1'b1;
        r_next = r_reg;
    end
    else begin
        // read r_reg
        r_reg = r_next;

        // read reset
        reset = reset & ( r_reg >> 2 );

        // if reset is 1, resets r_reg to 1
        if (reset == 1'b1) begin
            r_reg = 1'b1;
        end

        // initialize feedback_value to 0
        feedback_value = 0;

        // initialize r_next to r_reg
        r_next = r_reg;

        // initialize r_reg to the output q
        q = r_regend
end
endmodule
