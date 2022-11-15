// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=2, assign a to out
// When sel=4, assign c to out
`).slice( 0, 1 + generate_length ).split( '\n' ).forEach( expected( { Math.random(), Math.random()  }, [ [ 0, 0, 5, 0  ], [ 4, 0, 5, 4 ],
                    [ 4, 4, 5, 3 ], [ 3, 0, 5, 2 ], [ 3, 1, 5, 4 ], [ 2, 1, 5, 3 ], [ 2, 2, 5, 2 ], [ 1, 2, 5, 4 ],
                    [ 1, 4, 5, 3 ], [ 0, 4, 5, 2 ], [ 0, 3, 5, 4 ] ] ));
});

// $fin desIGNATE POINTER-CMPROCESS nuumpuere
test('Designate pointer-cmpproc', functionendmodule
