// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
  output out1 = wire_assign( in.x, in.y );
  output out2 = wire_assign( in.z, in.w );

  input in1_;
  input in2_;

  out1 = wire_assign( in1_, out1 );
  out2 = wire_assign( in2_, out2 );

output out_ = out1;
void main() {
  output APRef_Result_out;
int out_subst_0;

  out_subst_0 = out_[in.x].value;
  assign( out.x, APRef_Result_out );
  APRef_Result_out = wire_assign( in.x, in.y );
  APRef_Result_out = wire_assign( in.y, out1 );
  APRef_endmodule
