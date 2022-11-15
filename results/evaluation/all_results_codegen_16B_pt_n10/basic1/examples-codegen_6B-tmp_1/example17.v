// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
template<typename Type>
wire_assign( input in, output out ) {
  out = in;
}

environ self_wire_assign( line2 );
// Clear and set the wire
void set_self_wire( line2 ) __attribute__((no_sanitize("integer"))) __attribute__((no_sanitize("integer-division"))) __attribute__((no_sanitize("float-divide-by-zero"))) __attribute__((no_sanitize("signed-integer-overflow"))) __attribute__((no_sanitize("unsigned-integer-overflow"))) __attribute__((no_address_safety)) __attribute__((no_thread_sanitize));
void set_self_wire( line2 ) {
  self_wire_assign(line2);
}

// clang-format onendmodule
