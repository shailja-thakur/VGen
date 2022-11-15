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
always_comb begin
    case (next_state)
        case (0)
            out <= in;
        next_state <= present_state;
    end
end
end

module testnetb_fsm(clk, reset, in, out, enable);
input clk;
input reset;
input [5:0] in;
output out;
reg state;
always_comb begin
    case state <= 3:
        state <= (out ? 4 : 3);
    end
end

// register testnetb_dff out_from_clk_0 = testnetb_fsm(clk, reset, in, out, enable);

endmodule
