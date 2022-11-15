// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @(posedge clk)
begin
    if (a)
    {
        sum = b;
    }
    else
    {
        sum = 0;
    }
    
    if (a || b)
    {
        cout = 1;
    }
    else
    {
        cout = 0;
    }
end

endmodule
