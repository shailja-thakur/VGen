// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
input [31:0] a;
input [31:0] b;
output [31:0] cout;
output sum = 0;
output carry_out = 0;
always @(posedge clk)
    if ( bin2bust_fail == 1 ) begin
        bin2bust_fail = 0;
        sum = a + b;
        sum_flip = sum;
        carry_out = sum[30];
        bin2bust_fail = 1;
    end
end

#endif
endmodule
