// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
wire [4:0] out;

// Setup of the FSM.
// When a=0, assign b to out.
assign
when a=0
    out[3:0] = b
end

// When a=1, assign a to out.
assign
when a=1
    out[3:0] = a
end

// The FSM starts in state 0.
initial begin
  a = 0;
  b = 0;
  out = 0;
end

// The FSM executes in FSM state.
state state
{
  case 0
    when (sel) = 1
      a = b;
    when (sel) = 0
      b = a;
  end
}
`

const muxMultiplexerMultipleState = `// Design a 2-to-1 multiplexer.
module mendmodule
