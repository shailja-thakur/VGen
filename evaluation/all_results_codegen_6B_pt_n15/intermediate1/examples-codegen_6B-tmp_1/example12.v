// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

require mux.all()
#define value_1 mux((a ) , (b ))
#define value_2 mux((a ) , (b ) , 1)
#define half_adder(in_a, in_b, cin_cout, sum_out) { \
        int b1 = cin_cout; \
        int b2 = cin_cout + 1; \
        if (b1 < 0) { \
                b1 += oct_power; \
        } \
        if (b2 < 0) { \
                b2 += oct_power; \
        } \
        int a = in_a; \
        int b = in_b; \
        cout( b1 + a + b); \
        sum_out(a, b); \
}

// ---------------------------------------------------------------------
//
endmodule
