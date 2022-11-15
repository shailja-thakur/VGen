// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Variables as output signals
//Cout :er (Single-bit logic with the lower 8 bits it's C bit)
//Sum :er (Single-bit logic with the lower 8 bits it's S bit, 
//and the two upper bits K bit is not affected.)
CS({C,S,K},Cout);

CS(K,Sum);

task main()
    // Assign inputs 
    // cout <- a
    // sum <- b
    // cout <- adder( cout, sum)
    input[0:2] cx;
    cs_dump c;
    output[0:2] cx;
    output[c.TOUT] cout;
    output[c.TOUT + c.SOUT] sum;
    input[c.TOUT + c.KOUT] k;

    // IO setup    
    //a.imageendmodule
