// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
	cout <= '0';
	sum <= '0';
    end
    else
    begin
	if(input_a)
	    a <= input_a;
	if(input_b)
	    b <= input_b;
	sum <= a + b;
	if((a=='1' and b=='1') or (a=='1' and b=='0'))
	    cout <= '1';
	else
	    cout <= '0';
    end
end

""" % (self.input_a, self.input_b)

class D_HalfAdder_HalfAdder( ComponentBase ):
    def __init__endmodule
