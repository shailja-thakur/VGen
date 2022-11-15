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
initial begin 
  q = 1;
}
'''
'''
   .......................................................
   .......................................................
   .......................................................
   .......................................................
   .......................................................
   .......................................................
   .......................................................

   smc_gate_system_0 function.
定义了一个简单增益增减法，数值类型参与者的数据的加减，状态处理器+采样器
来维护计时器的数值，产生处理器在执行前向的加减，表end
endmodule
