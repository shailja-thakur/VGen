// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

begin :
  while ( input_pending( cout ) ) {
    output_buffer( cout, output_port( cout ) );

    step( cout, a );
    step( cout, b );
  }
  cout << "\n";
end
;

begin :
  while ( input_pending( cout ) ) {
    output_buffer( cout, output_port( cout ) );

    step( cout, a );
    step( cout, b );
  }
  cout << " " << a << " " << b << "\n";
end
;

execute {
};

endmodule
