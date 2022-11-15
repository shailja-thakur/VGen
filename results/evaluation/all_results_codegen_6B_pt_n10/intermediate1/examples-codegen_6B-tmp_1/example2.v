// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

    a_phi:wire bool a1, a2;
    b_phi:wire bool b1, b2;
    half_adder:wire (a1, a2)( a, a );
    half_adder:di({a1:0, a2:0, sum:0, cout:0;});

    nand:wire( a1 & b1 | a2 & b2 );
    sum:wire(data);
    cout:out;
    datapaper( a1, "A1" );
    datapaper( a2, "A2" );
    datapaper( b1, "B1" );
    datapaper( b2, "B2" );
    datapaper( cout, "COUT" );
    datapaper( sum, "SUM" );

endmodule
