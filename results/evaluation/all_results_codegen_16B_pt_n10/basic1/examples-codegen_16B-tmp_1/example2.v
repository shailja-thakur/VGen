// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign<input> out(in);


// Define the Test component
struct Test
{
  Test( clock_type& ) {}
  lsr<1> out{ in };
};

int sc_main(int, char**)
{
  Test(driver).out;

  return 0;
}
endmodule
