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
// The code for state transition
assign next_state = reset? 0:(in?(present_state):(!present_state));
// Synchronous logic
always @ (posedge clk or posedge reset) begin
    if(reset) begin
        out <= 1;
        // reset state is state 0
    end else begin
        // State transition logic
        present_state <= next_state;
        // This part must be in a different always block
        if(present_state) begin
            out <= 0;
        end else begin
            out <= 1;
        end
    end
end
endmodule
