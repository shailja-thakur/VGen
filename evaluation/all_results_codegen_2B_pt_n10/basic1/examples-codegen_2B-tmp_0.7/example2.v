// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Design a module that calculates the maximum of two integers
module max_int (input in1, input in2, output out)
{
    if (in1 > in2) {
        out = in1;
    } else {
        out = in2;
    }
}
// calculate the maximum of two integers

// Design a module that takes a list of integers and builds a string
module list_to_string (input list_in, output string_out)
{
    while (list_in != null) {
        string_out += list_in.elem;
        list_in = list_in.next;
    }
    string_out += '\n';
}
endmodule
