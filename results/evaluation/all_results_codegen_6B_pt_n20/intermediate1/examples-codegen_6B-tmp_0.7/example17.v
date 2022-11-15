// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

local int _sum = 0;

always @(posedge clk or posedge rst)
begin
    _sum <= sum + (a[_n] ^ b[_n]) + _sum;
    cout <= _sum;
end
endmodule
