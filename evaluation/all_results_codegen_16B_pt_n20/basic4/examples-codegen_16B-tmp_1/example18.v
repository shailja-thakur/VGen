// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// We now select only one of the variables, to model a boolean.
wire tmp;
generate
// Switch whenever sel is either 1 or 0.
// We also set a mask to remember which bit of sel we used.
// The then els of the mux is the active bit, and is 
// the register subsystem that we will use to consruct the decotor.
begin
 case sel {
 assume( sel = 0, value = closed_addr( mux.sel ) );
 endcase
  assign out = a;
 end

 case sel[1:0] {
 value = closed_addr( mux.sel );
 assign out = a;
 end
RESTART: if( sel == 1 ) {
 value = closed_addr( mux.sel );
 assign out = b;
 end
}
end 


mux*endmodule
