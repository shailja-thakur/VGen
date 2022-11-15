// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

//outputs are implicit

//NOTES:
//1. Both the input a and b are wires. A wire can have only 1 value at any given time.
//2. The output sum is a wire. 
//3. The output cout is a wire. 

//4. The half-adder can be created using the "or" operator. 

//5. The half-adder can be created by using the module "mux" with 2 inputs, "a" and "b" and 2 outputs, "sum" and "carry-out". The "a" will be used as the first input. The "a" will be the first element of the "mux" "sum" will be the output of the "mux".

//6. To add the carry-out to the input of the second half-adder, use "or" operator

assign sum = a ^endmodule
