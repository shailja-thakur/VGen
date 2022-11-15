// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
    if(rst) begin
        out <= 0;
    end
    else if(sel == 0) begin
        out <= a;
    end
    else if(sel == 1) begin
        out <= b;
    end
end

// Do a simulation of the multiplexer with 5 chips.
test_main ()
  next_cycle();
  for (int i=0; i<50; i++) begin
    rst <= 1;
    a <= 0;
    b <= 1;
    sel <= 0;
    #5 clock cycle(s)
    a <= 1;
    b <= 0;
    sel <= 1;
    #5 clock cycle(s)
    a <= 0;
    b <= 1;
    sel <= 0;
    #5 clock cycleend
endmodule
