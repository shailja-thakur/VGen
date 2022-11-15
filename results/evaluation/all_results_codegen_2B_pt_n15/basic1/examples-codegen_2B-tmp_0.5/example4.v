// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Design a module that generates a random number
module rand_gen( input [3:0] seed );

// Generate a random number
out rand_number( rand_gen in );

// Design a module that prints the random number
module print_rand_number( rand_number in, output [3:0] out );

// Print the random number
out print_rand_number_out( rand_number in );

// Design a module that prints the current time
module print_time( output [3:0] out );

// Print the current time
out print_time_out( print_time in );

// Design a module that prints the current date
module print_date( output [3:0] out );

// Print the current date
out print_date_out( print_date in );

// Design a module that prints the current date and timeendmodule
