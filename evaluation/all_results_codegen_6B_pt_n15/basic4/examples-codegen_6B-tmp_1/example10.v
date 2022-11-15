// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk)
sel <= switch (sel) {
	1'b0 : out <= a[4#];
	1'b1 : out <= b[4#];
};

// Module for the original digital multiplexer. 
module mux((tx_en, tx, t1, t2, t3, t4) , out) { 
  state query[5]; 
  always @(*) tx_en <= switch(sel) {
    0'b0 : out <= a[4#]; 
    0'b1 : out <= b[4#]; 
  }; 
}; 
endmodule
