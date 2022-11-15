// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

`;

nets["mux_passage"] = new net({
  config: {
    inputs: 1,
    output: 4,
  },
  type: 'list',
  plan: {
    instructions: `asm (
  // Grab the lines in each channel of a and b.
  read a_lines,
  read b_lines,
  // Determine sel. If sel=1, assign a = a_lines and b = b_lines.
  sels a = bool(sel),
  b = a_lines || b_lines,
  // Given sels, assign n 4-ary streams from data.

  // Verify `sels` here... if a, b have same structure, specs same.
  outs a_line, b_line
  vops a_channel, b_channel, sel
  endmodule
