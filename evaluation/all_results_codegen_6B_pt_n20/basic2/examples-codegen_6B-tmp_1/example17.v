// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out (an only output)
    output out  = if( a <-> b +1, 
                   if( a <-> b -1,
                   out
                );


module main() 
{
    16 x, y;
    x<->y;

    assign and_gate(a,b)+1 = y;
    ok();

    ok();
}

edition six_th_edition

endmodule
