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


signal s_rst, p_rst, overflow;
always @ (posedge s_clk)
begin
        p_rst <= 1'b0;         //Default
        s <= 0;
        v <= 0;
        r <= 0;
        p <= 1'b0;             //Copy of input
        overflow <= overflow'h1;
        next_state <=
		        a == 1'b00000000
                					? next_state = 1'b00010001                	// Carry propagation on
                					: next_state = 1'b01010001                	// reset | warning about overflow
                        | ((b==1'b00000000) & (a==1'b00000000))
                        & ! ((a==1'b01011111) & (b==1'b10101010))
                        & ! ((a==1'b111001111)end
endmodule
