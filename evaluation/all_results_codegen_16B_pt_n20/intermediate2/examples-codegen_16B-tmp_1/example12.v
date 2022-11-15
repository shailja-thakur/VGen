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
always @(posedge clk, negedge reset) begin
  if (reset == 0) begin 
    q <= 1;
  end else begin
    if (q == 12) q <= 1;
    else q <= q + 1;
  end
end
// on reset, replace the clear value on q to p_even with 110
// else, clear q
always @(posedge clk, negedge reset) begin
  if (reset == 0) begin
    q <= 2'b00;
  end else begin
    always @(posedge clk) begin
      q <= 2'b11;
    end
  end
end
assign q = poly << 2;
endmodule
