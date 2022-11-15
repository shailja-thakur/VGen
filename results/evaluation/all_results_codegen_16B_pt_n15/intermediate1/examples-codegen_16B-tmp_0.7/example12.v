// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always #( 2 ) begin
    cout <= {a[0], a[1], sum[0], sum[1]};
end

#( 2 ) logic [7:0] sum[0];
#( 2 ) logic [15:8] sum[1];
#( 2 ) logic [23:16] sum[0];
#( 2 ) logic [31:24] sum[1];

#( 2 ) logic [7:0] cout[0];
#( 2 ) logic [15:8] cout[1];
#( 2 ) logic [23:16] cout[2];
#( 2 ) logic [31:24] cout[3];

#( 2 ) logic [7:0] a[0];
#( 2 ) logic [15:8] a[1];

#( 2 ) logic [15:8] b[endmodule
