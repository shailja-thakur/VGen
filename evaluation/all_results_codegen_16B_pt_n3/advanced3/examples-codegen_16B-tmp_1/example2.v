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


begin Adv_fsm

----------------------------------------------------------------
Initialization
----------------------------------------------------------------
  begin Adv_gfl2
  present_state = IDLE;
  next_state = IDLE;

  end Adv_gfl2
----------------------------------------------------------------
Signal Assignment
----------------------------------------------------------------
  end Adv_fsm

"""

        num_samples = 3 

        mod_attr_iter.write('assign x = "1 1 0";', wait=True)
        mod_attr_iter.write('.tech {y}', wait=True)
        mod_attr_iter.write('y = 1;', wait=True)
        mod_attr_iter.write('assign clk = x;', wait=True)
        mod_attr_iter.write('assign rst = 1;', wait=True)

        self.assert_(count_if(tree,len_is(1endmodule
