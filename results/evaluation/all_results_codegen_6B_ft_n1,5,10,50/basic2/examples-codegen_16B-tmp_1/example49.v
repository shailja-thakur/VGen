// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

assign out = a & b;

// always block with output of out asserted

always @ (out)

begin

	clk = 1'b1; // assert clk
	// clk = 0
	
	clk = 1'b0; // deassert clk
	// wait for 4 clock cycles to test design
	
	$finish; // finish simulation
 
end

endmodule
