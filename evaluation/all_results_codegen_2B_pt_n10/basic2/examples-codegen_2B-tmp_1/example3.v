// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    
    assign out = a + b; 
  
  //Design function of and gate. (2)
  
  subroutine and_gate( a, b, out )
  {
    input[7:0] a(7 to 0); // Input of a
    input[7:0] b(7 to 0); // Input of b
    output out;
    reserved[7:0] out(7 to 0);   // For storing output denested

    // Denested OR function; outline of the OR function  
    
    _block    
    and.guard = a == 0
     or.guard  = b == 0
         
         acquire::sem::disqualify(out ); // // Not guard = status of output
         and.trigger = b == 1
                    or.trigger = a == 1     
     release::reto::acendmodule
