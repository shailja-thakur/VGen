// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
 
always @(posedge clk[0]) 
begin 
	pos <= (~(in | in[1]) & ~in[0]) ? 4'b1111 : 0;
end


// The following is a 3-bit priority encoder. 
// If the first input is high, *and* if the second input is high *and* if the
// output of the priority encoder indicates that the last input is low,
// take the output from the high side output multiplexer.
module priority_encoder2(
input 	sel, 	// Select high or low side (b value)
	  out, 	// Address 0: output, address 1:input1, address 2:input2
	  input1, 	// Address 3: input1, address 4:input2
	 input2, 	// Address 5: input1, address 6:inputendmodule
