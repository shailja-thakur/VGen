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
always @(posedge clk)
    case clk:
        present_state <= 0;
        if (~reset) out <= out;
    endcase
    if (~reset)
        switch (present_state) {
            case 0: present_state <= 1; next_state <= 1;
                if (~in) out <= in;
                else     out <= next_state;
                break;
            case 1: present_state <= 0; out <= next_state;
        }
endcase

// Design a Moore state machine that runs on an LSTM CELL. Reset state is 0, state 1 is 1.
module lstm_cell(clk, reset, in, out);
input reset;
input in;
output out;
reg next_state;
mini_lstm l():
	wire : ;
	reg start_state, stop_endmodule
