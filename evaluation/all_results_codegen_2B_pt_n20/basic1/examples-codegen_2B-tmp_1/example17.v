// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
input decreasing = 'low';
func decreasing_assign() {
  out( decreasing );
}

// assign in to output
output going_high;
func going_high_assign() {
  in( going_high );
}


// Initial state
z( changing );
wire low = 'low';
input reference;
func main() {

  // Initialize the assignment function
  out ( reference );

  // Wire the decreasing wire with the reference input
  decreasing_assign();

  // Wire the decreasing wire with the reference output
  out ( reference );

  // Declare a wire the spirals
  input decreasing_connectivity;
  func decreasing_connectivity_declare() {
    in( decreasing_connectivity );
  }
  decreasing_connectivity_declare();

  // Check out the reference
  out( reference );endmodule
