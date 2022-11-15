// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    let out = a and b;

*/
#include<iostream>
#include<vector>
#include<cstdlib>

void printVect( std::vector<bool> &v, std::ostream &out)
{
    for ( unsigned int i = 0; i < v.size(); i++ )
    {
        if ( v[i] == true )
            out << i << " ";
    }

    out << "\n";
}

int main_and_gate()
{
    std::vector<bool> data_a = { false, true, false, true, false, false, false, false, true, false, true, false, false, false, false, false, false, false, true };
    std::vector<bool> data_b = { false, false, false, true, true, true,endmodule
