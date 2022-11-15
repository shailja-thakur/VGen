// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

always @ (a)
begin
out <= a;
end

always @ (b)
begin
out <= b;
end

always @ (sel)
begin
out <= sel;
end


// Performs the same action for each a and b.
wire [4:0] a_, b_;
output [4:0] out_;

void mux_init()
{
  a_ = a;
  b_ = b;
  out_ = 0;
}

void mux_action()
{
  out_ = a_;
  a_ = b_;
  b_ = a_;
}

endmodule
