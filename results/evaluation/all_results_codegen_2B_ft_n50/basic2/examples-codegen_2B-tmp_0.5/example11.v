// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 wire a_and_b;
 wire a_and_b_not;
 wire a_not_b;
 wire a_not_b_not;
 wire a_not_b_not_not;
 wire a_not_b_not_not_not;
 wire a_not_b_not_not_not_not;
 // assign out = a_and_b_not | a_not_b | a_not_b_not_not | a_not_b_not_not_not;
// assign out = a_not_b_not_not_not | a_not_b_not_not_not | a_not_b_not_not_not;
//assign out = a_and_b | a_not_b_not_not_not;
//assign out = a_and_b_not | a_endmodule
