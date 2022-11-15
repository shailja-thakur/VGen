// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

signal add_in = a;
signal add_acc = sum.req + a;
signal add_out = cout;
signal add_sum = sum.rsp;
signal add_sum_r = sum.rsp;
signal add_out_r = cout;

assign add_in = a;
assign add_acc = sum.req + a;
assign add_out = cout;
assign add_sum = sum.rsp;
assign add_sum_r = sum.rsp;
assign add_out_r = cout;

const unsigned int log2_byte = ceillf(log2if(8));


// Input signals are high/1 and low/0
halide.Half twos_complement_count(
input a,
output output_count );


// TODO:endmodule
