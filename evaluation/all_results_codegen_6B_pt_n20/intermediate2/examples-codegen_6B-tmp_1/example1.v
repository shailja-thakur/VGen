// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk) begin private_issue process_outslice(reg[0:1], reg[2:3]);
  if (reset) begin reg[0] = 1; reg[1] = 1; end
  if (reg[0] == 12) begin reg[0] = 0; end
  else begin reg[0] = reg[0] + 1; end
end

next_post * main() begin
  reg < 32> q;
  counter c(clk, reset, q);

  // This is the initialization load for the counters, we use a loop to 
  // synthesize it as ticks not bursts
  for (int4 i = 1; i < 8; i++) begin
      c <= i;
  end
}

// Local Variables:
// tab-width: 4
// c-basic-offset: 4
end
endmodule
