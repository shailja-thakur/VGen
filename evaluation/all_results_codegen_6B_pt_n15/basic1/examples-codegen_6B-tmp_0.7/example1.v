// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
void wire_assign_module() {
out = in;
}

// Design a module that prints the input
module print_input( input in );
// print the input
void print_input_module() {
cout << in << endl;
}

// Design a module that prints the input
module print_output( output out );
// print the output
void print_output_module() {
cout << out << endl;
}

// Design a module that prints both the input and the output
module print_both( input in, output out );
// print both
void print_both_module() {
cout << in << " " << out << endl;
}

// Design a module that consumes the input
module consume( input in );
// consume the input
void consume_module() {
cin >> in;
}

// Design aendmodule
