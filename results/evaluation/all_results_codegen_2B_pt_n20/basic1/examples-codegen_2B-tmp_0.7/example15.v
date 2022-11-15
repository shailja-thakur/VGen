// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

var cfg = {
  name: "wire_assign",
  // inputs
  i: { type: "wire", wires: [ "out", "in" ] },
  // outputs
  o1: { type: "wire", wires: [ "out" ] },
  o2: { type: "wire", wires: [ "in" ] }
};

var net = new Circuit( cfg );

net.eval();
equal( net.i.value, 0, "equal i" );
equal( net.o1.value, 0, "equal o1" );
equal( net.o2.value, 0, "equal o2" );
endmodule
