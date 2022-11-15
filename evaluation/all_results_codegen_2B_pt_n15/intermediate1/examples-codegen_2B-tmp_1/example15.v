// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
    
    
//~19
//~12 field adder constants
const reg t6,	// sum over mto1 but carry out in mto0
        t5, 
        t4,
        t3;
reg t7;

//~19
//~11 isumborum.4
const reg isum, t1, t2, t3, t4, t5;

//~12
//~3.3
@@CLK 7OC12 BISQRT.ADDS C -.256f2t2fa2 - .256f2t2fa2


push  dout
push  din

enc PARAMDESC

    1 0                                           p0							 ADD.W#4 #dictionary, sb0-mto1#2	; constant (1, oa1#2 . dictionary . (2,endmodule
