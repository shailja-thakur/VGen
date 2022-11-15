// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign
(
    in,                       // in
    "Output received in wire assign"
);

// operator overloaded
output operator()( input /* in */ );
// return a pointer to output
// example can be found in C PA test
// Module level wire assign is required
output operator()( output /* in */ )
{
    // operator function prototype
    typeof( in ) temp;
    return (temp = in);        // auto logic caused else to be generated
}

endmodule
