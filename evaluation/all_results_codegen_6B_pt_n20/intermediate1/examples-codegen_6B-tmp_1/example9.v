// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
output r<8>();

imm<2> ia = concat( a, b );
r = select( ia [(bits(32)-1)] = 0, ia, ia | 1 < b);
select( ia [(bits(32)-1) + 1] = 1,
ia | concat( (a | ia), (b | ia) ),
concat( ia | b, ia | concat( (a | ia) , (b | ia) ) ) );
output carry;


// This is an shift register.
module shift_register( 
input o;
output o1, o2, o3, o4 );

input ia < 8 > s1;
input ia < 8 > s2;
input ia < 8 > s3;
input ia < 8 > s4;

oendmodule
