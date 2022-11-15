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
assign r_next = {
    (~r_reg[3] & r_reg[2]),
    r_reg[3]{bits[clk], bits[reset]}, 
    r_reg[3]{bits[clk], bits[reset]} >> 4 
};
reg [4:0] table [4:0];
reg table_counter;
always @(posedge clk) table_counter = (table_counter + (reset > 1)) % len_stream;
assign q = table[table_counter];
reg [15:0] id_on, id_hi, id_lo[7:0];
assign id_low[1:0] = id_lo[4:0];
assign id_low[2:0] = id_lo[2:0];
assign id_hi[0] = id_endmodule
