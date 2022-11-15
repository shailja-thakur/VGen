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
always @ ( clk, reset,  \
                %inc_q_1, %slow_clk_1, \
                %inc_q_12, %slow_clk_12 \
){

    #fast region
    // from here to $delta
    if ($hot_clk_2 $and ($fast_clk_2 $not $slow_clk_2)){ 
        q <= {%inc_q_12,[$csdram]}; 
    } else {
        //$clock_1 $is $gas_clk_rst $test_clk_1 @light
        # 3 If {!hreg16($hot_clk_1) ... $hot_clk_2) then 
            # 1 increase q to 1 
            if ($hot_clk_2){
                $q_temp <= 1;endmodule
