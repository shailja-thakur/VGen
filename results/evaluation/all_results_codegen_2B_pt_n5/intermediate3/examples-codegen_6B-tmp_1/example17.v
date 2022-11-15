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
   if (reset)
   begin        
      r_reg <= (2'b00 << 1) | (2'b01 << 2) | (8'b0 << 3);
      feedback_value <= r_next[19:4];
   end
   else        
      r_next <= r_reg;
   end
end

// write feedback_value to LFSR register
// post-processing of feedback value is done by 
// transferring it to M register using M_REG
always @(posedge clk)
// post-processing (shift/add/xor) of specific case of LFSR register is different
// this is why it may better to write post-processing as a separate component
begin
   M_REG[0] <= ((default_FFullCfg.LFSR_M.a0endmodule
