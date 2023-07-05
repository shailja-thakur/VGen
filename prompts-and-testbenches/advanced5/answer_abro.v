// chrome-extension://efaidnbmnnnibpcajpcglclefindmkaj/https://ptolemy.berkeley.edu/books/Systems/chapters/FiniteStateMachines.pdf
module abro( 
    input clk,
    input reset,
    input  a,
    input  b,
    output z );

    parameter IDLE = 0,
    SA = 1,
    SB = 2,
    SAB = 3;

    reg [1:0] cur_state,next_state;

    assign z = cur_state == SAB ? 1 : 0;

    always @ (posedge clk) begin
        if (reset)
        cur_state <= IDLE;
        else
        cur_state <= next_state;
    end

    always @ (cur_state or a or b) begin
        case (cur_state)
        IDLE : begin
        if (a && !b) next_state = SA;
        else if (!a && b) next_state = SB;
        else if (a && b) next_state = SAB;
        else next_state = IDLE;
        end
        SA: begin
        if (b) next_state = SAB;
        else next_state = SA;
        end
        SB : begin
        if (a) next_state = SAB;
        else next_state = SB;
        end
        SAB: begin
        next_state = IDLE;
        end
        endcase
    end


endmodule