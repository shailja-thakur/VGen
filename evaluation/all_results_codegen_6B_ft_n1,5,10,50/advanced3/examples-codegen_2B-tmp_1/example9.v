// This is a finite state machine that recognizes the sequence 101 on the input signal x. 
module adv_fsm(
input clk,
input reset,
input x,
output z ); 
reg [1:0] present_state, next_state;
parameter IDLE=0, S1=1, S10=2, S101=3;
// output signal z is asserted to 1 when present_state is S101 
// present_state is reset to IDLE when rset is high
// otherwise it is assigned next state
// if present_state is IDLE, next_state is assigned S1 if x is 1, otherwise next_state stays at IDLE
// if present_state is S1, next_state is assigned S10 if x is 0, otherwise next_state stays at IDLE 
// if present_state is S10, next_state is assigned S101 if x is 1, otherwise next_state stays at IDLE 
// if present_state is S101, next_state is assigned IDLE


initial begin
    z = ~(x);
    x = x or z;
    b1 = x lsb;
    convert_b1_to_next_state( b1 );
    p = present_state;
end 

always @(posedge clk)
    if (reset) begin
        next_state = IDLE;
    end else if (p == IDLE)
        begin 
            x = x and z;
            b2 = x lsb;
            convert_b2_to_next_state( b2 );
            p = next_state; 
        end else if (p == S1 and b1 == 1)
            begin 
                x = x or z;
                b3 = x lsb;
                convert_b3_to_next_state( b3 );
                p = next_end
endmodule
