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
always begin
    if (reset == 1) begin r_reg = 0;
    else begin 
	   dec <= r_next <= .....(r_reg);
	   let r_next = r_reg Xor ((7 downto 1) => 7 & r_reg(1), (6 downto 0)(N' not(nor));
	   let r_next <= r_reg Xor ((31 downto 23) => lookahead(5), (31 downto 22)(N' not(nor)));
	   r_reg <= r_next(2 downto 0);
	   let feedback_value = r_reg(1) Xor ((4 downto 0)(N' not(nor));
       end
end
end
endmodule
