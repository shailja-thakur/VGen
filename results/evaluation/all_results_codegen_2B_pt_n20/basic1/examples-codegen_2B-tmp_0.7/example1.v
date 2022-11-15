// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

/*
Design a module that parses the following input:
1. A list of numbers (3, 7, 2, 4, 2, 5, 6).
2. A single number (5).
3. A single string (hello, hello, hello, hello, hello).
The output is a list of numbers.
*/
module parse_input( input in, output out );
// parse the input string and return a list of numbers

/*
Design a module that computes the sum of all the numbers in the output list.
*/
module sum_list( input list_of_numbers, output sum );
// sum the numbers in list_of_numbers

/*
Design a module that computes the sum of the numbers in input_list and the numbers in output_list.
*/
module sum( input list_of_numbers, input output_list, output sum );
// sumendmodule
