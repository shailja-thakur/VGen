// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
localparam rf_offset=50;

initial begin
    reset = 1'b0;
    clk = 1'b1;
    in = 1'b0;
    out = 1'b0;
    out = 1'b0;
    next_state=0;

    present_state <= 0;
end

barrier begin
    always @(posedge clk)
    begin
        reg new_present_state;
        new_present_state = !(pres_x & (in==0));
        if (reset == 1'b1) reset = !reset;
        present_state = new_present_state;
    end
end

always @(posedge reset)
begin   
    
    if (clk == 1'b0) begin
        if (reset == 1'b0) begin
            out = 1end
end
end
endmodule
