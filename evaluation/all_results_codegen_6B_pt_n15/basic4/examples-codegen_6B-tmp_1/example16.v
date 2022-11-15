// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @ (posedge clk) begin
    if(sel) 
    {
	    assign out = b;
    }
    else 
    {
	    assign out = a;
    }
    // If the multiplexed input has changed, simply invoke a new
    // pipeline stage.
    if (~in) begin
        $display("prev input %d", in);
        assign in = a;
    end
end

// Compute inputs: 5*a+2*b+c+3*d+4*e.
// LOAD_CONST := LOAD_CONST
module load_const(
  const int c,
  const int d,
  const int e,
binout p,
input [5:0] op0,
input [2:0] op1,
input [3:0]endmodule
