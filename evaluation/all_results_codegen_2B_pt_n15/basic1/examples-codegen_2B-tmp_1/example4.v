// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign module foo = wire_assign( input my_assignd_in, output my_assignd_out );
       
// Design a module that only outputs the value 0.6 times the value of its inputs
module my_adder_logic( o1 in, o2 in, o3 in, o4 in, o5 in, out o6 );
// emit o5, o5 value times o4 plus o3 value times o2 plus total value of o1 inputs
my_adder_logic module e = my_adder_logic( o1 add, o2 divide, o3 sum, o4 multiplies, o5 tot, out o6 );
       
// Design a module that simply outputs the sum of x, y, z
module my_adder( input log_sum, input total, input x, input y, input z, output log(sum), out sumendmodule
