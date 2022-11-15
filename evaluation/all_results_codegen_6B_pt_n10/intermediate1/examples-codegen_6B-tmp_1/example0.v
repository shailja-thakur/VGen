// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

begin

    @( _ + _ ) @(_ c_out + ((a << 1) | b) )@ = {};
    @( _ + _ ) @(_ sum + b + ((a << 1) & 0x80 ) )@ = {};

    IF( a");
        IF( b");
            result = sum;
        ELSE
            result = (a << 1) | b;
    END-IF

    IF( c_out");
        protected
            res = result;
    END-IF

    end
else ";

`
endmodule
