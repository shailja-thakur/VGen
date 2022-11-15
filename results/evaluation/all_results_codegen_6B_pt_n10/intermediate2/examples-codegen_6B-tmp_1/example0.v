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
always @(posedge clk) scan_register_fsm t next_q;

reg [3:0] q @(posedge clk);
variable int incremented;
always @(negedge clk) begin
    if (reset) begin
      next_q = 1;
    end
    else if (next_q == 12) begin
      next_q = 1;
    end
    else begin
      if (bit_counter == 0) begin
        incremented = 1;
      end
      else begin
        bit_counter = 1;
        bit_counter--;
      end
    end
end

reg [3:0] r @(posedge clk) { next_q; }
`)
endmodule
