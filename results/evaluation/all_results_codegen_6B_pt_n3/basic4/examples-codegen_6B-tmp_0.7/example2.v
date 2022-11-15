// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk or negedge rst) begin
    out <= sel ? a : b;
end

// Test the multiplexer.
#4:1 multiplex( {1'b0, 1'b1}, {1'b1, 1'b0} );
#4:2 multiplex( {0'b1, 0'b0}, {0'b0, 0'b1} );
#4:3 multiplex( {1'b0, 1'b1}, {1'b0, 1'b1} );
#4:4 multiplex( {0'b1, 0'b0}, {0'b1, 0'b0} );
#4:5 multiplex( {'1'b1, '1'b0}, {'1'b1, '1'b0} );
#endmodule
