// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

always_comb
begin:
if ( sel )
    assign out, b;
else
    assign out, a;
end
);
`

func TestMux(t *testing.T) {
	RunTestAsm(t, MultiplexerTest, MultiplexerDisassembler)
}
endmodule
