// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

subdef fitness = function
 (
  inputs =
   both_bits ->
  bit1 : boolean, bit2 : boolean 
  ).

    out1 <= localbit<leq> braket 2' " AND bit1 bit2 " AND bit1 <-> braket out1' 
    out2 <==
    braket some <equal-equal> bit1 <-> braket out2' " sfree.

 {
    (true) out1(true) ; 
    .. 
    (true) out2() ).

 {
    (false) out1(false) ; 
    .. 
    (false) out2() ).

}


 { 
    braket free_localid,input_braket; 
    braket a_braket, b_braket, bit1_braket, bit2_braket,endmodule
