// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out summing to 1.0
    
  // and_gate::task a_and_b( 
  void and_gate::run( ) 
  { cout << "and_gate::run()" << endl;
    out = ((a) & ( b )).getVariable<uint8_t>();
    return;
  }
endmodule
