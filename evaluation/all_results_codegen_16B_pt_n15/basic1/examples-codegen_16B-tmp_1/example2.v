// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;
// assign value "1" to wire in
assign in = 1;

// Design a module that finds the absolute value of a
module wire_abs( input in, output out );
// implement square root
proc square(input in ) {
  input i;
  i = in;
  tmp <= i;
  i.%s;
  i = i + 1;
  j <= i
  j = i - 1;
  out <= j.%s
}
// implement absolute value
always@(posedge clk or negedge rst) begin
  if( !rst ) begin
    tmp <= 0;
    assign out <= tmp;
  end
  else begin
    tmp <= 0;
    assign out <= tmp;
    square(in);
    // (possibly???) check for overflow
    assend
end
endmodule
