// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
{
    register real 
            carry = 0,
            sum = 0;

    register boolean 
            one = false,
            op = false, 
            inv = false;

    real 
            a_c = 0,
            char = 0,
            msk = 0,
            ser = 0,
            sum_sn = 0;

    integer 
            a_i = 0,
            b_i = 0;

    ZEContext 
            context;

    //std::cout << "hallo" << std::endl;
    // std::cout << "hallo   // " << std::dec << a_i << '\t' << a_c << '\t' << b_i << '\t';
    // std::cout << a << '\t' << b << '\t' ;
    endmodule
