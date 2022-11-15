// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg a, b, sum;

always @(posedge clk)
begin
    if (rst)
    begin
        a <= 0;
        b <= 0;
        sum <= 0;
    end
    else
    begin
        a <= ~a & ~b & ~sum;
        b <= ~a & ~b;
        sum <= ~a & ~b | ~sum;
        cout <= a | b | sum;
    end
end

endmodule
