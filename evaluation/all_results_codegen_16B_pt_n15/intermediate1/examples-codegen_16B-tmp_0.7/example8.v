// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b, cout;
output sum;

int sum;

always @(posedge clk)
begin
    if(a==0 and b==0)
    begin
        sum = 0;
    end
    else if (a==0 and b==1)
    begin
        sum = 0;
    end
    else if (a==1 and b==0)
    begin
        sum = 1;
    end
    else if (a==1 and b==1)
    begin
        sum = 1;
    end
    else
    begin
        sum = 0;
    end
    // Output
    cout = sum;
end

endmodule
