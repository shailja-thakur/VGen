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
assign q = r_next;

// configure reset and clock signals
// always assign these inputs to the input bits
// inputs: clk, reset, q
// outputs: r_reg[5:0], r_next[2:0], feedback_value
// reset and clock signals are inputs to our lfsr
always @(posedge clk or posedge reset) begin
    if (reset) begin
        r_reg <= 0;
        r_next <= 0;
        feedback_value <= 0;
    end
    else begin
        // define the LFSR as a shift register with a feedback
        // input and a clock input
        // our LFSR only has a clock input.
        // input clk, reset, q
        // outputs: r_reg[5:0], r_next[2:0], feedback_value
        // clock signalend
end
endmodule
