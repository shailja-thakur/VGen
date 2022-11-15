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
always @(posedge clk or negedge reset) begin
    if (reset == 0) begin
        q <= 1;
    end else if (q == 12) begin
        q <= 1;
    else begin
        q <= q + 1;
    end
end


begin
    
    rxI: reg rxI()
end



"""

print("Running...")
from hwt.synthesizer.vhdl import toVHDL
t = toVHDL(vlVComp,
           static_path="""vcomp.verilog""",
           arch="ARCH_%s" % arch,
           )

print(t)

macros = []

test_verilog  = os.path.join(os.path.dirname(__file__), os.pardir)
rel_test_verend
endmodule
