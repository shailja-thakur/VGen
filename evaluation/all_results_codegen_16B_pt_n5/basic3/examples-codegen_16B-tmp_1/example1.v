// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign c to out
// When sel=X, assign in[X] to out
priority_encoder( in, out ) = {
        pos <= in << 0 @ [1],
        sle,
        pos <= in << 1 @ [1],
        sgt,
        pos <= in << 2 @ [1],
        sle,
        pos <= in << 3 @ [1],
        slt,
        pos <= in << 4 @ [1],
        sle,
        pos <= in << 5 @ [1],
        sext
}}

table tbl(
input #{var in}
('s', 1), #{A*},
('f', 2), #{A*},
('b', 4), #{A*}
)
)
""")

    sim=Sim(Root, tboa, entity_listendmodule
