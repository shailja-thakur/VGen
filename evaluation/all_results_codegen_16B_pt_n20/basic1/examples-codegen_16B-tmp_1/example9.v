// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign in( out );
// assign out to in
typedef in::output_type in_out_type;
wire_assign in_out_type( out );

// Design a module that will automatically type a function filter
// and assign it to the input given a type. This is not anoreous.
module filter_with_string_{
    typedef output_type( *filter_type ) ( input_type );
    input my_in; // input to the module.
    output my_out; // output of the module.

    filter_type _this; // automatic.
    _this.A = my_in >> my_out;
    my_out = _this;
}

// Design a class that contains a automatically typed function
module function_{
    typedef output_type( *function_type ) ();
    input my_endmodule
