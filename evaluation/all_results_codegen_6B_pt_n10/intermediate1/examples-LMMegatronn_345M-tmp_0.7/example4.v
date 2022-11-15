// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [3:0] c;

assign {c[2:1], c[0]} = a + b + c[0] + c[3];

genvar i;
generate
    for(i = 0; i <= 3; i = i + 1)
    begin : full_adder
        full_adder fa(a[i], b[i], c[3],
                         c[4], sum[i], c[3]);
    end
endgenerate

endmodule
