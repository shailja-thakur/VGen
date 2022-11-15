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
process (clk, reset)
begin
    if (reset) 
        r_reg <= 1;
    else if (r_reg)
        r_next := r_reg(24, r_next);
    else
        r_next <= r_reg(24, r_next);
    q <= (garcado(r_next));
end
module ccytcon( // traffic controller
    input clkp,
    input rst,
	output eth_gauge_transport,
    input clk,
    input clkphase,
    input clkvga,
    input skap_tx,
    input iedb_tx_init,
    input pa_5v,
    input iedb_tx_w,
    input swp,
    output trailer,
    output iedb_rst_w,endmodule
