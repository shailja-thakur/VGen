// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire assign [8:0];
assign -> in;
// completion trap: assign does not restrict a, b, c
{
in:
out:
assign:
}
// Output only (upto one cycle delay)
wire [3:0] a, b, c;
assign -> a, b, c;
// Verify writes
verify a = 1,b = 1,c = 1;

module complete_delay_code;
wire x, y, z;
always @() begin
  y = 1, x = 1, z = 1;
done_code
end
endmodule
