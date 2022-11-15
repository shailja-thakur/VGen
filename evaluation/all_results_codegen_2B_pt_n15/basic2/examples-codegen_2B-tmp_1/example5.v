// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out.output

and_gate :: and_gate(
    input a_, 
    input b_, 
    output out 
    ) : and{a_,b_,out}
{

  when(a) then out := out OR a_;
  when(b) then out := out AND b_;
  
}
   
     
// -|----------------- -+---- |---- -+---|-------------- -+---------+
// -|    Sensitivity    |---- |---- |---- -+---------+ ---- |
// -+------------------ -+---- |---- -+---|-------------- +---------+
   
// Sensivity with
// a input pin

and_gate's sensitivity with:

when(a) input PIN+X => out -> output OR a; 

when(b) input PIN+Y => out -> output AND b; 

endmodule
