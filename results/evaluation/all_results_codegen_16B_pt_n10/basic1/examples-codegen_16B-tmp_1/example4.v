// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out ).in[0] = 7;
// To use as relational expressions/predicates
wire wire1 = in(0);
wire wire2 = out(0);
expr a = wire1 >> 8;
expr b = wire2 >>1;
expr result = (a < 17) & (b > 20);

// to compare two integer values
expr inv3() {return not(0 <= x) & (x < 10);}

// design a module that computes  input[0]^input[1]^input[2]^...x.input[N-1]
// module dups( input in, out int_arr, N );
// int_arr[i] = (( in[0] ^ in[1] ^ in[2] ^ ..x. in[N-1] ) & inv(N) ) |
//              endmodule
