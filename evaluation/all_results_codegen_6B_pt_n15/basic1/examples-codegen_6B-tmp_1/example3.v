// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
unchecked( out = in );

// test assign operation
// s1::output out = as_output( s1::input in[] );
// provides the public interface of a CPS set
unchecked( void s1[] );
// s1 onwire as_Foo = std::const_pointer_cast<t>( in[0] );
// uses data in the unpacked t object to convert that to Thingy
unchecked( thingy const * s1[] );
// // assigns to the set of Things with covariant type t
// int rw, cnt = 0;
// std::set<O>::iterator itr = s1.begin();
// std::set<O>::liveset_element_t lle = *itr;
//endmodule
