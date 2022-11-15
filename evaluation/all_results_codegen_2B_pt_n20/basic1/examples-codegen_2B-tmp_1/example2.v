// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module ftn_one( input in, output out );
module ftn_two( input in, output out );
module f( 
     module wire_assign( in, out ), 
     module ftn_one( in, out ), 
     module ftn_two( in, out )
    );

net-list( f in[1:4], out[2:3] );
------------------------------------------------------------------
//
//match the wirings
module m1 = f[.in0.5:{>,.out1.3:{>>}];
via_outline
(
    u[1:2], in[1:2], M = m1
);

module m2 = f[.in3:{9,>},.out2:{-21:33}];
via_outline
(
    u[2:3], in[3:4],endmodule
