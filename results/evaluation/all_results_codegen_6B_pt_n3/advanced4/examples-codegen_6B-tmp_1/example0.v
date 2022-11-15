// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.




default IP=> 6. 192-BYTES IP! 

,'  ************* Addresses ************** '
,' Polym Lcm Delegate to: 
,' ------------------------------------- '
;address ad0 = Read("A:0");/^\(  ad0 & host c(111) )->ad;/
,'  ************* Instruction flow ************** '
,' ------------------------------------- '
;MCI_IH_R ? Instruction[ad0] handle Read(ad0,z0:host(111))>Host(z0);/^\(  Instruction[z0] & (0x40 for all pop ...Host(z0)) )->z;/
,' ------------------------------------- '
[8:0] MCI_to_host_R <= host(V_ip) invert(load);'False;[8:0] z0_%_MCI_endmodule
