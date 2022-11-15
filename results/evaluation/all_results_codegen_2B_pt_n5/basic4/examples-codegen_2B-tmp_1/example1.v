// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
component multiplex
{
    parameter out_s = 4;
    parameter b_s = 2;
    wire [b_s::value] outb, [out_s::value] outa;
    pulse sla;
    pulse sra;
    assign outa[out_s::rs] = ina[ina[a[0]:1]];
    assign outb[out_s::d:0] = inb[inb[b[0]]];
    reg c; // Logic chanel;
    assert a<=b;
    slaaw #(1) aa;
    sla #(1) a0; 
    sla #(1) a1;
    sla #(1) a2;
    sla #(1) a3;
    sla #(1endmodule
