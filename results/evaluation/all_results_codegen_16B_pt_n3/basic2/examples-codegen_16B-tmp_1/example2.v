// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

assign( out, and_gate( a, b ) );

 // test the domain of this module

test_suite* and_gate_test() {
   test_suite *test =  BOOST_TEST_SUITE( "and_gate test Suite" );

    test->add( BOOST_TEST_CASE( &and_gate ) );

    return test;
}

void
and_gate( )
{
    int a = 1;
    int b = 1;
    int ans = 1;
    int out;

    // module and_gate is called with these parameters:  a=1, b=1
    and_gate( a, b, out );
    BOOST_CHECK( out == ans );

    // module and_gate is called with these parameters:  a=0, b=1
    endmodule
