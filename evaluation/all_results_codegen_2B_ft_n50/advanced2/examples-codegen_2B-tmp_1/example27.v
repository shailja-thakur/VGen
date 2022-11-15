// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Finally, output q.


always @(posedge clk, posedge reset) begin
 case({reset,slowena})
 2'b00: q={4{0}};
 2'b01: q=q+1'b1;
 2'b10: ;
 default: 
 casex({slowena,q})
 4'h4: q = q+1'b1;
 4'h5: q = q+1'b1;
 4'h6: q = q+1'b1;
 4'h7: q = q+1'b1;
 4'h8: q = q+1'b1;
 4'h9: q = q+1'b1;
 default: q= q+1'b1; 
 endcase // case(q)
 end // always @ (posedge clk, posedend
endmodule
