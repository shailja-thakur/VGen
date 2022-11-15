// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module output_to_input( output pin_out ) in {
	pin_out = in;
}
'''

tb = myhdl.build_model(module_top, wire_assign)
w = myhdl.Wire()
s = tb.name
ctx.addClass(w, "wire")
myhdl.activate(w, 1)
ctx.dumpElements()
print("<end of module %s>" % (ctx.getModuleName(),))
endmodule
