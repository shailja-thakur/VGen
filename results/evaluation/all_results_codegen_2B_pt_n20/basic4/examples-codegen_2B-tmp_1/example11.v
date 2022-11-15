// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

always @(posedge  clk )
// assign input a to out
    if ( a[sel] == 31 ) // $
           {out = 0b1;}
    else if ( $0 ) // not $
           {out = a[sel]}
    else
           {out = 0b0}
}

always @( )
// assign input b to out
   if ( $0 ) {out = b}
   else {out = $}

`
)
endmodule
