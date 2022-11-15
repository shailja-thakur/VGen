// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @ (negedge clk) 
width #1 [4:0] muxdef(sel)  // Named muxdef to ensure the correct signal names!
d_out <= muxdef(sel)^input[b];
// Constraints on the select{} statement can reference concat and variable width
// fields. As the mux can perform both AND and XOR, we need to use concat.
transp d_out;
        """
        return minimu_sts18( ( Y, Z, ) )

    
if __name__ == "__main__":
    test_mux_pal()endmodule
