// This is a Moore state machine with two states 0 and 1, one input in, and one output out. 
// Reset state is 0. Output is high in state 0. If in is low, state changes.
module simple_fsm(input clk, input reset, input in, output out);
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1

    always @(posedge clk) begin
        if (reset) begin  
            present_state <= 0;
        end 
        else begin
            // State flip-flops
            present_state <= next_state;  
        end

    end

    always @(present_state,in) begin
        case (present_state)
        // next state logic
        0: begin
            if(in) next_state <= 0;
            else next_state <= 1;
        end
        1: begin
            if(in) next_state <= 1;
            else next_state <= 0;
        end
        endcase 

    end

    // output logic
    assign out = present_state?0:1;

endmodule