
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_simple_fsm;

    reg clk, reset, in;
    wire out;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    simple_fsm UUT (.clk(clk), .reset(reset), .in(in), .out(out) );

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
        reset = 1; in = 0;
        #period;
        // goes to state 0
        if(out!==1) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, in=%b, out=%b",clk,reset, in,out);

        // start fsm
        reset = 0; 
        in = 0;
        #period;
        // goes to state 1
        if(out!==0) begin
            $display("test 2 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, in=%b, out=%b",clk,reset, in,out);

        in = 0;
        #period;
        // goes to state 0
        if(out!==1) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, in=%b, out=%b",clk,reset, in,out);

        in = 1;
        #period;
        // stays in state 0
        if(out!==1) begin
            $display("test 4 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, in=%b, out=%b",clk,reset, in,out);

        in = 0;
        #period;
        // goes to state 1
        if(out!==0) begin
            $display("test 5 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, in=%b, out=%b",clk,reset, in,out);

        in = 1;
        #period;
        // stays in state 1
        if(out!==0) begin
            $display("test 6 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, in=%b, out=%b",clk,reset, in,out);

        // check reset again
        reset = 1; in = 1;
        #period;
        // goes to state 0
        if(out!==1) begin
            $display("test 7 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, in=%b, out=%b",clk,reset, in,out);

        $display("all tests passed");
        $finish;

    end

endmodule