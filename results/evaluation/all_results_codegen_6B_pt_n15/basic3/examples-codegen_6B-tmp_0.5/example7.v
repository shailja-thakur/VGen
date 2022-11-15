// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  if (sel)
  begin
    pos <= in[0];
  end
  else
    pos <= 0;
end

module priority_encoder_test()
	#pragma pipeloop(0)
	#pragma pipeloop(1)
	#pragma pipeloop(2)
	#pragma pipeloop(3)
	#pragma pipeloop(4)
	#pragma pipeloop(5)
	#pragma pipeloop(6)
	#pragma pipeloop(7)
	#pragma pipeloop(8)
	#pragma pipeloop(9)
	#pragma pipeloop(10)
	#pragma pipeloop(11)
	endmodule
