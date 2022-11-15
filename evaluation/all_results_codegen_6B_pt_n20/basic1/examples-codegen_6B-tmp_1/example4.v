// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_func( input in, output out );

always @(posedge clk or (1'b0 & p_g)) {
  out = in;
}

module test_module(input in)_wire_assign {
  wire_assign_func br;

  br = in + 3; // Warning: undefined behavior depends on the current value of the input (non-compliant)
  br = 2 - in.dat; // Warning: undefined behavior depends on the current value of the input (non-compliant)
  br = br + in;; // Warning: undefined behavior depends on the current value of the input (non-compliant)
  br = br - in.dat;; // Warning: undefined behavior depends on the current value of the input (non-compliant)

  buffer sys_buf = {1'; };
  output out = (sys_endmodule
