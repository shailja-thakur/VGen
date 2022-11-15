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
always @(posedge clk, posedge reset) begin
    if (reset == 1) begin
        r_reg <= 0;
    end else begin
        case(r_reg)
            1: begin
                r_next <= r_reg;
            end
            2: begin
                r_next <= r_reg ^ 1;
            end
            3: begin
                r_next <= r_reg ^ 2;
            end
            4: begin
                r_next <= r_reg ^ 3;
            end
            5: begin
                r_next <= r_reg ^ 4;
            end
            6: begin
                r_next <= r_reg ^ 5;
            end
            7: begin
                r_next <= r_reg ^ 6;
            end
            8: begin
                r_next <= r_reg ^ 7;
            end
end
end
endmodule
