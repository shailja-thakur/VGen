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
always @(posedge clk or posedge reset) begin
  if (~reset) begin
	  q <= 12'b0;   
  end else begin
	 q <= q + 1'b1; 
  end
end

// dummy section to make the synthesizer think that it has a PCTDMA block
assign [12:8] q = 12'b0;


// DMA highway loads get sent to this:
wire q_highway[3];
assign q_highway[0] = q;
assign q_highway[1] = 12'b0;
assign q_highway[2] = 12'b0;

// DMA loads get sent to this:
wire [3:0] loads;
assign loads = q_highway;


// change the OUTPUT enable signal of the PCTDMA doendmodule
