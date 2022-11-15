// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

    var out: and_gate 

    // when a and b are both true, program 1 executes 

    when a = 1, b = 1
        out = true;

    // when a is 1, but not b, program 2 executes 

    when a = 1, not b
        out = false;


    // when neither is true, program 3 executes 

    when a == 0 
        and b == 0 
        out = 0;


    and_gate
    universe
    input a, b, out;

  and_gate:
	$display("in and_gate for $a and $b");
	$display("out for $out");

  case when a = 1:
    show ("a is 1", 1);
  case when b == 1:
    show ("b is 1", 1);
  case when b == 0:
endmodule
