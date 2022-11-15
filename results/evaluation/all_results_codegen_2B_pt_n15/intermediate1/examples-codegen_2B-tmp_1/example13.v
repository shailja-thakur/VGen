// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk) begin
    sum += a + b;
    out_nlow = sum & 1;
    out_nhigh = sum >> 1;
end
);
*/
endmodule
