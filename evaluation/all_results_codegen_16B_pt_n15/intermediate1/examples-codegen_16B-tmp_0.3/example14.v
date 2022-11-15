// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @(posedge clk) begin
    if (rst) begin
        cout <= 0;
        sum <= 0;
    end
    else begin
        if (a) begin
            cout <= 1;
            sum <= b;
        end
        else begin
            cout <= 0;
            sum <= 0;
        end
    end
end

endmodule
