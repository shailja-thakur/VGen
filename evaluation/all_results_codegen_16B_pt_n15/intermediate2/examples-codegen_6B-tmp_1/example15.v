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
always @(posedge clk) begin
    if (reset) begin
		q <= 0;
	else if (q == 12) begin
		q <= 1;
  	else begin
		q <= q + 1;
	end
end

module mux_gate(
    input clk,
    input clk2,
    input rst,
    input mux,
    output readback
);
  mux <= (((mux == 0) and ((rst == 0))),
	  ((rst == 1) or ((rst == 0) and (mux == 1))),
	  ((rst == 1) and ((mux == 0))));
  output enableSIO_mux = mux & (~(((mux == 1) and (rst == 1))));
  output enableSIO_rst = mux && rend
end
endmodule
