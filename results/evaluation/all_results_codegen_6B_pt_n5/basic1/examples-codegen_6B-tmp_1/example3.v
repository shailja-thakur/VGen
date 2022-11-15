// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
in = out;
// Design another module manually
flat macro_adder( input in, output out );
// "flat" means all the elements in the module have to be the same type
// even if the input has mixed types, this outputs their sum (since sum probably
// is the output type)
macro (input slope, output output)
{
   output = slope;
}
// Designing the output module
macro_adder( out, out )
{
   out = out + out;
}
`

function coder(){

var net = crawl(t, "CDS");
     net.find_all_modules();
        console.log(net.to_string());

function crawl(t, type){
    var n = next_node(t, 0);
    var u = new utility(n)) {
        return u;
    }
}endmodule
