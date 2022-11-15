// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @( )
begin
    sum = a + b;
    cout = sum;
end


// This is a full adder. A full adder adds two bytes, and produces a sum and carry-out.
module full_adder( 
input a[8:0], b[8:0],
input carry,
output cout[8:0] );

always @( )
begin
    tmp1 = a[0:7] + b[0:7];
    tmp2 = a[1:6] + b[1:6];
    tmp3 = a[2:5] + b[2:5];
    tmp4 = a[3:4] + b[3:4];
    tmp5 = a[4:3] + b[4:3];
    tmp6 = a[5:2] + b[5:end
endmodule
