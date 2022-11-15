// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
always @(posedge clk or negedge reset)
begin
  r_reg <= reset & bit_31(r_reg[2:4]);
  if (reset == 0) begin
    r_next <= r_reg;
    feedback_value <= 4'd0;
  end else begin
    feedback_value_sum <= feedback_value + 4'd7;
    feedback_value <= feedback_value_sum[5:4];
    r_next <= feedback_xor(4'd7, r_reg) + feedback_value[3:0];
  end
  assign q <= r_next;
end
`;

const CONFIG_PC = `
reg [7:0] pc = 0;

function CPU_step() begin
  if(active_instr < 2) begin
    wait(5'000);                 // waitend
end
endmodule
