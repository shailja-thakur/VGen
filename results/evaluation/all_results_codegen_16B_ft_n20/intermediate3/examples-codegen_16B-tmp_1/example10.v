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
assign r_next = (reset) ? 
// if reset is high, make the register 4'b0000
1'b0 :
// otherwise determine the r_reg value
r_reg ^ ( (r_reg[0]^r_reg[2]) & r_reg[3]) 
^ r_reg[3] 
^ r_reg[2]; 
assign feedback_value = r_reg[0]^r_reg[2]; 
// store the register output in your FPGA
assign q = r_reg; 
always @(posedge clk) //always triggers on a rising edge of the clock
begin
if (reset == 1) // cannot have both reset and clk, so if reset is pushed,
// reset goes high and lfsr_counter stops by default its 4'b0 value
// if lfsr_counter isend
endmodule
