// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk) begin
  if (sel==0) begin
    out <= a; 
  end else begin
    out <= b; 
  end
end

// Test the multiplexer.
// $display(a, "a");
// $display(b, "b");
// $display(sel, "sel");
// $display(out, "out");
// $finish;

// Initialize the signals.
a <= 1;
b <= 2;
sel <= 0;
out <= 0;

// Run the verilog code.
// $dumpfile("test.vcd");
// $dumpvars(0, "a");
// $dumpvars(1, "b");
// $dumpvars(2, "sel");
// $dumpvars(3, "out");

// $endmodule
