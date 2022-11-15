// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
define wire_assign
(
   input in: "%a", attribute id a : (%synopsis, %inName, %outName),
   output out : "%a"
)
// block:
{
    return
    {
        assign out := in;
    }
}

%ymp_mp
return;
endmodule
