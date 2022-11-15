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
{
    r_reg = r_reg << 1 & 01000000000000000000
    if (r_reg & 0x40000000) feedforward(1) else ;
      r_next = r_reg & 0x3fffffff
}

always @(posedge clk)
begin
  if (posedge reset) begin
        r_reg = 0xffffffff
        r_next = 0xffffffff 
  end
endif
begin
    
  // Whether a cluster is discarded 
  // checking in the feedback value detects a large dogma upset and inverts the cluster 
  // If a cluster is rejected do not update the taps 
  
  nibble_cluster_received_leakage_1_state_1: begin
    assert r_reg & 16384;
    assert r_reg &end
end
end
endmodule
