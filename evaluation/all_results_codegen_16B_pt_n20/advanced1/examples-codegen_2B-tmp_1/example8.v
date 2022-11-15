// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low



always @*
begin
	s <= a + b;
	i <= a - b;
	
	o <= (a & asignb_cast) | (b & bsignb_cast);
	
	k_sat = asignb_cast & bsignb_cast;
	// if asign and bsign have same bits Zimmer can also assign k_sat = 0; will hurt smaller multiplier 
	
	if(k_sat || a[7] !== b[7])
	begin
	
	start = 1'b1;
	end
	else
	 start = 1'b0;
	
	end
	//register Preservation Rule: for each asynchronous stage, one output stall must release the previous stage.
	always @(posedge clock)
begin
	if (ready) begin//output ready or DVI enabled
	 
	end
endmodule
