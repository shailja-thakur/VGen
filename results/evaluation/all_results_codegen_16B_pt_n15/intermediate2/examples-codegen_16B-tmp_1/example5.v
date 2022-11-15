// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk, reset) begin
    if (reset) q <= 1;
    else if (q == 12) q <= 1;
    else ++q;
end
"""

def write(f,states,expect,pre,pst):
    for i in states:
        f.write("    assign o_q[3:" +str(len(states)-1)+"] = ")
        f.write(str(expect[i]["expect"]['q'])+"\n")


vals = make_vals('ones',[1,0,0,0])
validate('test_select_yplusstar2plus3.v',variables = 'clk reset',contexts = 'pst pst',register_values = vals)

f = open('expected_test_select_yplusstar2plusendmodule
