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
(* lfsr_type ) reg [5:0];
(* lfsr_typeClk ) reg [5:0] lfsr_clk;
always @(posedge clk) while (l != reset) begin
    let lfsr_next = ({5'b000, !(!r_reg[4] & q0 & lfsr_clk[4])});
    if (r_reg[0] != 1) begin
        r_reg[4:0] <= not r_reg[2:0];
        feedback_value <= {7'h00, r_reg[4:0], q0, !((r_reg[4:2]==r_reg[4:2])|(r_reg[4:2]!=r_reg[4:2]))};
        end
end
endmodule
