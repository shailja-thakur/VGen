// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk) begin
 if (reset) begin
q <= 4'b0; // In Verilog, can only assign a wire to a reg, so must statement 
 end
 else begin
 if (slowena) begin
 if (q < 9) begin
q <= q + 1;
 end
 else begin
q <= 0; // If the output is 9, reset the counter to 0
 end
 end // end of slowena
 end
end // end of always

end
end
endmodule
