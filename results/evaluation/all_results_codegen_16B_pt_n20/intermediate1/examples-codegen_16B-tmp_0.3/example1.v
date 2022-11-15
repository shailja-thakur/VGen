// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg a, b, cout, sum;

always @( posedge a or posedge b )
begin
    if (a)
    begin
        cout <= a;
        sum <= a + b;
    end
    else
    begin
        cout <= b;
        sum <= b;
    end
end

endmodule
