// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
       // Assigning to itself results in an infinite loop

*/

void wire_assign( module_t *in, module_t *out );
void wire_assign( module_t *in, module_t *out ) {
      out->len = in->len;
      out->queue = in->queue;

      int i = 0;
      for ( i = 0; i < in->len; i++ ) {
            out->data[i] = in->data[i];
      }

      // Cannot access shared variables inside modules
      // clang-format off
      /* out->var_automatic = in->var_automatic;
      out->var_static = in->var_static;*/
      // clang-format on
}
endmodule
