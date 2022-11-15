// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
function wire_assign( input in, output out ) {
  out.value = in.value;
}

// Design a function that returns a random number between 0 and 2
function random( min, max ) {
  return Math.floor( Math.random() * ( max - min + 1 ) + min );
}

var rand = random( 10, 15 );
// Construct the array using random numbers
var arr = [ rand, rand, rand, rand ];

// Design a function that returns a random index
function getRandomIndex( myArray ) {
  return Math.floor( Math.random() * myArray.length );
}

// Assign arr to an output
var out = new Output();
out.value = arr;

// Assign the output to the input
wire_assign( in, out );

// Assign arr to an output
var outendmodule
