// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always ineq void incdir (@(posedge clk or negedge reset)) {
    if(reset == 1) { q <= ICONST(1); } 
    else if(q == ICONST(12)) { q <= ICONST(1); }
    else { q <= ICONST( q+CONST(1) ); }
}
// decdir is identical to incdir except incdir(b), decdir(b)
always ineq void decdir (@(posedge clk or negedge reset)) {
    if(reset == 1) { q <= ICONST(1); }
    else if(q == ICONST(12)) { q <= ICONST(1); }
    else { q <= ICONST( q-CONST(1) ); }
}
// counter flow:
// c_dw : location of q indicatesendmodule
