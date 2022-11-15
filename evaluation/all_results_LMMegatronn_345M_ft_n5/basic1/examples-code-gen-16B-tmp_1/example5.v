// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;

// Design a module with two inputs, a and b and an output f.
// Assign f to 0 unless both inputs are 1 in which case f is 1.
module ander_assign( input a, b, output f );
// assign the output f to 0 unless the inputs match the select
assign f = ( a == 1 ) && ( b == 1 ) ? 1'b1 : 1'b0;

// 6.4. Truth Tables
module using_truth_table( input d, t, select, output f );
// All inputs into the truth table with -- makes it a dont_care
assign f = d ? t : select;

// 6.5. Coding Styles
```
//Variant 1
if (outInt == 1)                    // a Conditional Expression
	a = -b;
else if (outIntendmodule
