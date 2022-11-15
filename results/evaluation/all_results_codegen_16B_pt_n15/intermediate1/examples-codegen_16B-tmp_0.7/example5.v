// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_1, a_2, b_1, b_2, c;

wire [1:0] a_cout, b_cout, cout__cout, cout_sum;

always @( posedge clk ) begin
    if ( clk == 1 ) begin

        a_cout <= a;
        b_cout <= b;
        cout_cout <= ( a_cout + b_cout );
        cout_sum <= sum;
    end
end

half_adder( a_1, b_1, cout_sum, a_2, b_2, c, a_cout, b_cout, cout_cout, cout_sum );

endmodule
