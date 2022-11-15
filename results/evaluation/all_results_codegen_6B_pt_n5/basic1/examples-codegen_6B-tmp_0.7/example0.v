// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module b_assign( output out );
// assigns wire_assign(b1, b2) to b3
module b_b_assign( output out );

// Design a module that assigns the output to the input and inverts
module wire_invert( input in, output out );
// assign out to in and invert the output
module b_invert( output out );
// inverts and assigns wire_invert(b1, b2) to b3
module b_b_invert( output out );

int main(){
    b_b_invert(0);
    b_invert(1);
    b_b_assign(2);
    b_assign(3);
    wire_invert(4);
    wire_assign(5, 6);
    wire_invert(7);
    return 0;
endmodule
