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
//  if (reset && in)
//  begin
//    next_state = reset;
//  end
if (present_state != next_state)
begin
	if (in)
		next_state = next_state ? 0 : 1;
end
end
`

func TestFSM(t *testing.T) {
	src, err := ioutil.ReadFile(fSM_string)
	if err != nil {
		t.Errorf("file read failed")
		return
	}
	exp, err := ioutil.ReadFile(fSM_expected_output)
	if err != nil {
		t.Errorf("file read failed for expected output")
	}
	ast, err := kytheuri.Parse(map[string]string{
		"tests": fSMendmodule
