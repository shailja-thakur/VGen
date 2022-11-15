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
initial begin
  q:=0; 
  if ($reset==1 and clk==1) begin
    q:=1; 
  end else if (q==12) begin
    q:=1; 
  end else begin
    if (clk==1) q:=q+1; 
    q:=$min(q+1); 
  end 
end
endmodule
