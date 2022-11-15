// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    match out_match( 
        and_gate( a, b, out_a )
        and_gate( b, a, out_b )
        );

using namespace std;

int main()
{
    int a, b;
    
    cout << "Enter a number: ";
    cin >> a;
    cout << "Enter another number: ";
    cin >> b;
    
    and_gate::output out;
    and_gate and(a, b, out);
    
    and_gate::input out_a;
    and_gate::input out_b;
    and_gate::match out_match;
    
    out_match.and( out_a, out_b );
    
    cout << "AND of a and b: " << out_a << " and " << out_endmodule
