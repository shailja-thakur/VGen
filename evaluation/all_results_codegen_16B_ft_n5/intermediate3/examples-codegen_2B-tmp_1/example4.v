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
always @ (posedge clk) 
if (reset) r_reg <= 5'b1 << 0; 
else r_reg <= r_next;
lpm_compare comp_next(

	.aeb (1'b0),
	.agb (),
	.ageb (),
	.aleb (),
	.aneb (),
	.dataa ({5{r_reg[1]}}),
	.datab ({5{r_reg[2]}}),
	.datae (),
	.dane (),
	.denb (),
	.diffbit (),
	.e abh (),
	.e bbh (),
	.faeb (),
	.nageb (),
	.paeb (),
	.sageb (),
	.slba (),
	.slceb (),
	.slnb (),
	.slpageendmodule
