// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(*) begin
  out <= ( (load == 1'b1) ? data // for load high
           : left_rotate((1'b1&~load), amount, out(7:0), data(7:0)) );
end
`

const cRightRotate = `step_end step_rd step_wr step_rs step_ws steps
  if(load) begin
    step_rs <- out(0);
    step_ws <- out(1);
    MEM(0,#address);
    set_load(1);
  end
step_end
`

func GatherConv(ir Instruction, db Catalog) { db.AssociateTextResource(ir.Name()) }
endmodule
