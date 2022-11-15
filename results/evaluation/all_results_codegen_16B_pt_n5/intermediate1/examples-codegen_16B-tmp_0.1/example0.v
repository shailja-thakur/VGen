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
    else
    begin
        if (a)
        begin
            sum <= b;
            cout <= 1;
        end
        else
        begin
            sum <= 0;
            cout <= 0;
        end
    end
end

endmodule
