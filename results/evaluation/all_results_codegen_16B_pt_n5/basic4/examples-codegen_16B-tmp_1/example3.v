// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @( posedge a, b ) begin
   out <= a;
   out[sel] <= b;
end
  : assume_valid_address
    long unsigned int addr;
//  input[1:31] bus
//  generated : enable, enable_out, load, store
// - load(addr) logic found in address pins
// - store(logical) logic found in payload from a!
// - bottom line/(top line on forget this) enable logic found in
// enable_addressendmodule
