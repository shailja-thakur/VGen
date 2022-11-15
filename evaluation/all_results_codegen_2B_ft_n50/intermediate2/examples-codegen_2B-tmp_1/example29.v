// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk) begin 
 case(reset) 
 1'bx: q <= 5'd1;
 . sd_2018: q <= 5'd12;
 . sd_2020: q <= 5'd1;
 . sd_2022: q <= 5'd12;
 . sd_2024: q <= 5'd1;
 endcase
end 
endmodule
