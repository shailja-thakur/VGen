// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign out[6:0] =
(
    ((load) && ((amount & (0b01) << 0)) ) |
    ((load) && ((amount & (0b10) << 2)) ) |
    ((load) && ((amount & (0b11) << 4)) || out[6] << 3)
);
initial out = data;
*/

class OptimizedLeftRotate {

  protected StepInfo _left_rotate_info;
  protected StateDataIsLoaded _stateIsDataLoaded;
  private ActiveParties _generate_parties;

  public OptimizedLeftRotate(int intClk, int intReset, int intAmount,
      int intData, int intLoad, StateDataIsLoaded stateDataIsLoaded,
      ActivenessInfo actInfo, String moduleName) {
    _left_rotate_infoendmodule
