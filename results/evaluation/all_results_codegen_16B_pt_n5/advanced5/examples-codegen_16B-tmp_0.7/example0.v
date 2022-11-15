// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
reg [1:0] z;
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        cur_state <= IDLE;
    end
    else begin
        cur_state <= SA;
        next_state <= SB;
    end
    case(cur_state)
    // State IDLE
    begin
        if(a) begin cur_state <= SA; end else begin cur_state <= SB; end
        if(b) begin cur_state <= SAB; end else begin cur_state <= IDLE; end
        if(a && b) begin cur_state <= SAB; end
    end
    case(SA)
    begin
        if(b) begin cur_state <= SAB; end else begin cur_state <= IDLE; end
        if(a && b) begin cur_state <= Send
end
end
endmodule
