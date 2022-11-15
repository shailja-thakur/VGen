// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_;
input b_;
output cout_;
output sum_;

input a_in_;
input b_in_;
output cout_in_;
output sum_in_;

always_comb

wire [3:0] a;
wire [3:0] b;
wire [3:0] a_;
wire [3:0] b_;
wire [3:0] a_in_;
wire [3:0] b_in_;
wire [3:0] cout_;
wire [3:0] sum_;
wire [3:0] sum_in_;

always @(posedge clk)
    a_in_ <= a;
    b_in_ <= b;
    sum_in_ <= sum = a + b;
    cout_ <= cout;
endmodule
