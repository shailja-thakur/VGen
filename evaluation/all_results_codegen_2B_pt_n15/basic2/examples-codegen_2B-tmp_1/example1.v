// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    // when a is false and b is false, out is false
    // otherwise, out is true

and_gate( a :input_pull_gate ; 
    b :input_pull_gate ; 
    out :output_pushgate ) : gate_module;

  '''
  # Create an object
  ctor = CORBA.InterfaceDef (name = "and_gate", module = "simple_circuit.i")

  # Create tokens
  ctor.interface_header =
    CORBA.InterfaceType ('and', interface_id = CORBA.NO_REP)

  in1 = ctor.interface_header.inherits('input_pull_gate') 

  in1.header.typedef_list0.string_identifier = "anonymous_input"
  in1.header.typedef_list0.type = 'shortendmodule
