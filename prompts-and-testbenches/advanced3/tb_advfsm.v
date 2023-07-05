
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_adv_fsm;

    reg clk, reset, x;
    wire z;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    adv_fsm UUT (.clk(clk), .reset(reset), .x(x), .z(z) );

    initial // Clock generation
        begin
        clk = 0;
        forever begin
        #(period/2);
        clk = ~clk;
        end
    end

    initial begin

        #2;
        
        // check reset
        reset = 1; x = 0;
        #period;
        // goes to state IDLE
        if(z!==0) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("x=%b, z=%b",x,z);

        // start fsm
        reset = 0; 
        x = 0;
        #period;
        // stays in state IDLE
        if(z!==0) begin
            $display("test 2 failed");
            $finish;
        end
        else $display("x=%b, z=%b",x,z);

        // start pattern
        x = 1;
        #period;
        // goes to S1
        if(z!==0) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("x=%b, z=%b",x,z);
        x = 0;
        #period;
        // goes to S2
        if(z!==0) begin
            $display("test 4 failed");
            $finish;
        end
        else $display("x=%b, z=%b",x,z);
        x = 1;
        #period;
        // goes to S3
        if(z!==1) begin
            $display("test 5 failed");
            $finish;
        end
        else $display("x=%b, z=%b",x,z);

        #period;
        // goes to S1
        if(z!==0) begin
            $display("test 6 failed");
            $finish;
        end
        else $display("x=%b, z=%b",x,z);

        $display("all tests passed");
        $finish;

    end

endmodule