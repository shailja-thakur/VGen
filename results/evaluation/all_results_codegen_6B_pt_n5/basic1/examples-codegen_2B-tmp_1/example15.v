// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Design a module that removes empty slots from a container (list)
module container_remove_empty_slots ( container in, output out );
in -> in :: input[]
out -> out :: output[]
  container_remove_empty_slots ( input[] );

// Design a module that adds the input value to the container
module container_add_input ( container in, input in[], output out );

// Assertaion in b-mode
in -> in :: input[]
  if (!container_empty(in)) {
    container_add_input(in,in[0],out);
  }
out -> out :: output[]

// Printing result
out -> output[]
endmodule
