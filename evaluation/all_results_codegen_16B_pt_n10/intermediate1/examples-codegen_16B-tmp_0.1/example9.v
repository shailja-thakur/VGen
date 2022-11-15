// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @(posedge clk)
begin
    if (rst)
    begin
        sum <= 0;
        cout <= 0;
    end
    else if (a)
    begin
        sum <= sum + 1;
        cout <= a;
    end
    else if (b)
    begin
        sum <= sum + 1;
        cout <= b;
    end
    else
    begin
        sum <= sum + 1;
        cout <= 0;
    end
end

endmodule
