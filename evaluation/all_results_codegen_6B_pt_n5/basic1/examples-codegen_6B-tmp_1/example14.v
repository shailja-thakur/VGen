// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
{
   // FIXME do this for all edge cases including in==out
   _process( out, in, 0 );
}
module wire_process( input in, output out);
// process out
{
   _process( out, in, 0 );
}
function _process( out, in, guard )
{
   if ('process' == guard) {
      out( in.value );
   }
   else {
      _process( out, in, guard + 1 );
   }
}
endmodule
