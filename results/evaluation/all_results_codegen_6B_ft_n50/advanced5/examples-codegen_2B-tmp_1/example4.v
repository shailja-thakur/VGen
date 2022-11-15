// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
reg[12:0] reg_output;

always @(posedge clk)
 begin    
   if (reset == 1'b1) begin   
     next_state = IDLE;
#ifdef AHBRO_TIMER
   if ((idle == 0 && a == 1) || (idle == 0 && b == 1)) begin
       next_state = S1;
     end    
   else
#endif
   if (!(a == b)) begin
       if (a == 1) begin        
          next_state = S2;
          #ifdef AHBRO_TIMER
          else
          if (b == 1) begin
             next_state = S3;
             #endif
          end
       end
       else begin
          next_state = S3;      
          #ifdef AHBRO_TIMER
          end
end
endmodule
