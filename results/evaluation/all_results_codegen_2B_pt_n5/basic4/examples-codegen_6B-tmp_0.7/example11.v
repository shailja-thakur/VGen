// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk or negedge rst) begin
  if (rst) begin
    out <= 0;
  end
  else begin
    if (sel) out <= b;
    else out <= a;
  end
end

// Now we can test our multiplexer by connecting the output of our 
// multiplexer to a LED.
// We will use the test harness to drive the test signals. 
// See the test_multiplexer.h file for details on the multiplexer test harness. 

// Test that the multiplexer works. 
// Test that the multiplexer works. 

always @(posedge clk or negedge rst) begin
  if (rst) begin
    out <= 0;
  end
  else begin
    if (sel) out <= b;
    else outend
end
endmodule
