// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = a && b;


// --------------------------------------------------------------------------
//   Example driver
// --------------------------------------------------------------------------

int main() 
{
    and_gate(0,1, 2);
    cout << endl;
    and_gate(0,1, 3);

    return 0;
}


endmodule
