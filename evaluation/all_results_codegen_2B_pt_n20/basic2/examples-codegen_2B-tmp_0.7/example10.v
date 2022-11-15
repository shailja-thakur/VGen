// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

module and_gate_module(
    input a, 
    input b, 
    output out );

    // assign the AND of a and b to out

%macro my_and(a,b)
%{
    out = a && b;
}
%endmacro

%macro my_and_gate(a,b,out)
%{
    out = and_gate(a, b, out);
}
%endmacro

// the outer macro

%macro and_gate( a, b, out )
%{
  %{
    // by default, the first and second input are interleaved
    out = a;
    %{
      %{
        // the second input is not read once again
        a = !a;
      }
    }
    %{
      %{
endmodule
