// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

#(define buffer_width 32)
#(define buffer_height 32)

input [ buffer_width-1:0 ] in_a, in_b;
input [buffer_height-1:0] in_cout;
output [buffer_width-1:0] out_cout;
output [buffer_height-1:0] out_sum;

always @(posedge clk) begin
    if (rst) begin
        out_cout <= 0;
        out_sum <= 0;
    end else begin
        in_a <= in_a_prev;
        in_b <= in_b_prev;
        out_cout <= in_cout;
        out_sum <= in_sum;
        in_a_prev <= in_a;
        in_b_prev <= in_b;
        inend
end
endmodule
