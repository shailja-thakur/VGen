// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @( posedge clk )
  out <= sel ? a : b;


begin
end
"""


def scenario_test_temporal_equal_multiplexer():
    """
    Create a model pass that checks that multiplexers have the same
    temporal behavior when multiple inputs are assigned to the
    same output.
    """

    model = MiniModel( model_text="""
// MODEL: 1-to-4 min/max signals a multiplexer
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @( posedge clk )
  out <= sel ? a : b;
end
""")
endmodule
