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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
assign r_next = { r_reg[2], feedback_value, r_reg[3] };
assign q = r_reg;
assign feedback_value = feedback_value;

// q[0] is the input so it's the state machine starts the state of the LFSR
// which determines the next state of the LFSR will be sampled
// AND the current state of the LFSR.
always@(posedge clk or negedge reset)
begin
    if(reset == 0)
    begin
        r_reg <= 0;
        q <= 0;
    end
    else
    begin
        r_reg <= r_next;
        q <= feedback_value;
  end
end
endmodule
