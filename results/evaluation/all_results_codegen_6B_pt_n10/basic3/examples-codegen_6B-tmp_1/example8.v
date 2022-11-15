// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or ((sel == 0) && (in == 1))) begin
  if(sel==1) begin
  	sel = 0; 
  	or(pos, in[3]);                 	// Write lowest bit of input to priority encoder position latch.
  	signal priority_hbit;           	// Write Last signal approximated as input with 0-1 bit high.
  	if(~priority_hbit) begin           	// Because data-edge triggering, write latch bit to reg.
    	#5 bit pos;
      	bit_clear reg[1:0];            		// Fill reg with zero, ie priority encoder (missing) is off.
      	#0 to_right 8;
  	end
  endelse begin
  	sel = 1;                       	// Data bit level set as new Input respective high-output.
  	bitend
endmodule
