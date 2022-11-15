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
always @(posedge clk) begin
    if (reset) begin
        r_reg <= -1;
    end
else begin
    r_next <= ((r_reg and -1) xor 8) | (r_reg >> 2) | (bc16(10, 51) and r_reg << 22);
    q <= (bits(r_next, 4, 7) << 5) | bits(r_next, 0, 3);
findValidSolution;  
end

// design a 3-bit maximal-length Galois LFSR with taps at bit positions 8 and 6
module lfsr2( 
    input clk,
    input reset,
    output [3:0] q
); 
reg [3:0] r_reg;
wire [3:0] r_next;
wire feedback_value;
// on reset set the valueend
endmodule
