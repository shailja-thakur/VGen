// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
function wire_assign(in, out ){
  out.w = 5;
}
// make the module in the web platform using function composition and export
export {wire_assign};
endmodule
