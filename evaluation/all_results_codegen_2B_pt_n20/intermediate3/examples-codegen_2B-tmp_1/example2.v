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
assign q= ! reset | & feedback_value << 10 | r_next;
always @(posedge clk)
// on clock pulse, increment r_reg in LFSR
   if (reset) begin
     r_reg[4] rand bitvec(4)
   end else begin 
     r_reg[4] shl rand bitvec(4)
     r_next = r_reg[3] ^ r_reg[2] ^ r_reg[1] ^ r_reg[0] 
code taking input from module module_in and writing to module_out
#pragma inc_src
void interrupt_in(
    module_in_in i 
);

// interrupt vector called when the input to lfsr module changes
void interrupt_in( trigger r )
{
    // input to interrupt vector is the next value of the linear feedback shiftend
endmodule
