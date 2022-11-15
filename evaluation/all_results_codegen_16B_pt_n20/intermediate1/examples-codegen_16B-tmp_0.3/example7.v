// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out;

assign a_in = a;
assign b_in = b;

reg [2:0] sum = 0;

always @ (posedge clk) begin
    if (a_in and b_in) begin
        sum <= sum + 1;
    end
end

assign sum_out = sum[1];

endmodule
