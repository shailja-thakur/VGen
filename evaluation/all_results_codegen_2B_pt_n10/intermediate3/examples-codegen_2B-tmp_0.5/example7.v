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
    if (reset == 1) begin
        r_reg = 1;
        r_next = 1;
        feedback_value = 0;
    end
    else begin
        r_reg = r_next;
        r_next = r_reg;
        feedback_value = r_reg ^ (r_reg << 2);
        q = feedback_value;
    end
end
);

// design a 4-bit Galois LFSR with taps at bit positions 4 and 3
module lfsr1( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwiseendmodule
