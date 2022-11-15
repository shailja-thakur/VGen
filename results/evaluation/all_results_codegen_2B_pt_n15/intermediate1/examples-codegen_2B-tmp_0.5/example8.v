// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b,
output cout, sum;

input carry_in;

input carry_out;

assign cout = a;
assign sum = a;

assign carry_out = carry_in;

always @(posedge clk) begin
    if (clk == 0)
    {
        if (a == 0)
        {
            if (b == 0)
            {
                cout = 0;
                sum = 0;
                carry_out = 1;
            }
            else
            {
                cout = 1;
                sum = b;
                carry_out = 0;
            }
        }
        else
        {
            if (b == 0)
            {
                cout = a;
                sum = 0;
                carry_out = 1;
            }
            elseend
endmodule
