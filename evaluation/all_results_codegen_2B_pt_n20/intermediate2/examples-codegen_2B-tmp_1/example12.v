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
//
  intercond
    input [3:0] coeff;
  param
    coeff [3:0] {1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 5, 4};
region ver
    input [3:0] x;
    wire [5:0] rank;
    wire [3:0] next_c;
    output reg [3:0] next_q;
    contigious block native
        assign next_q = x{next_c};
    begin
      if (~reset) begin
        if (coeff == 3'db) begin
          if (clk && ~x{0}) begin
            next_c = coeff(rank);
            next_q = x{next_c};
          end
        end else begin
          if (clk && ~x{5}) beginend
end
end
end
endmodule
