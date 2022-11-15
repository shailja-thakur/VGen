// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_in, carry_out;

always @( posedge clk or negedge rst )
begin
    if( rst == 1 )
        carry_in <= 0;
    else if( clk == 1 )
        carry_in <= carry_out;

    sum <= (a ^ b) + carry_in;
    cout <= sum[31:16];
end

endmodule
