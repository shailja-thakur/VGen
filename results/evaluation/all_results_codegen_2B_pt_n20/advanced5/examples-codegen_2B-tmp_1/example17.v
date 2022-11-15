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
always @(posedge clk) begin
	cur_state = (a > b) ? SB : SA;
	next_state = (cur_state == IDLE) ? SAB : cur_state;
	next_state = (a > b) ? SAB : next_state;
	z = cur_state == next_state;
end
);

"""),

    )

# Instantiate QSYS confilct
vi.create_qsys_blank(1)

dut.vcd_filename = 'qsys_fsm_impl.vcd'

dut.upload_confdir = '../configs/'

dut.set_memory_size(32)

# Execute FSM 
dut.run(0, 20)

# get SQR requirement
sqr_p = dut["demux"endmodule
