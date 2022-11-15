// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

description

Inputs a, b, and an output "out".

Co-prime:
, 11 & 0  
| 10 &  
  09 & 01  

Outputs the last co-prime bits of the input, so:
, 210 & 0010

*/

   

input a, b;




orGate( a, b, out );

return out;

} // end andGate


input o( int i )
{
    // return input 4?lsb of 24bit integer


int f, g;

extractLSB( i, f, g );

// cout<<"input o: "<<i;
// cout<<", f: "<<f<<", g: "<<g<<endl; 

}

input a, b;

void xorGate( input a, input b,endmodule
