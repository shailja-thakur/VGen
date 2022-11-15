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
always @(posedge clk | posedge reset) begin
    if (reset) begin
        r_reg := $b00;
    end else begin
        r_reg := r_reg@3;
    end
    r_next[2:0] := feedback_value; // bit position 2
    r_next[3:1] := r_next[2:0]; // bit position 3
    r_next[5:4] := r_next[2:0]; // bit position 5
    r_next[5:4] := r_next[2:0] ^ $b10; // bit position 2
    r_next[5:3] := r_next[5:4]; // bit position 3
    r_next[5:2] := r_next[5:3]; // bit position 2
    r_next[5:2] :=end
endmodule
