// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

function facToDigit( n, digits ) {
  for ( let i = 1; i <= digits; i++ ) {
    n = n * 10 + n % 10;
  }
  return n;
}

console.log( facToDigit( 10, 4 ) );
    // 10
endmodule
