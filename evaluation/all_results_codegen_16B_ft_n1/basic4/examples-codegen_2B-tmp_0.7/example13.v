// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a to out.

// The number of output bits is 4.

// The number of input bits is 4.

reg [4:0] a;
reg [4:0] b;
reg [] out;

reg [4:0] in_a;
reg [4:0] in_b;

reg [4:0][4:0] sel;

// The number of clock cycles is 8.

reg [4:0] count;

// The number of clock cycles is 4.

always @* begin
  // If sel = 0:
  //   a = a.read();
  //   out = out.write(a);
  //   b = b.read();
  //   out = out.write(b);

  if (sel == 0)
    a =end
endmodule
