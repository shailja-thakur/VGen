// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or negedge rst)
  if(sel)
    pos <- logic_not(input);
end
''')

def string(out,data):
  if not(isinstance(data,list)):
    data = [ord(char) for char in data]
  out.init = data
  if len(data) > 0 and data[0] != 0:
    data = map(lambda x: x | 128,data)

def main(args):
  # Open the Slave device
  # Slacc.slacc('init')
  
  def encode(function, a, b):
    if libSlave.slave.getReg(interface.SENSOR_REG_FUNCTION,False) != function:
      libSlave.slave.setRegs(interface.SENSOR_REG_FUNCTIONendmodule
