
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_count_slow;

    reg clk, slowena, reset;
    wire [3:0] q;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    count_slow UUT (.clk(clk), .reset(reset), .slowena(slowena), .q(q) );

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
        reset = 1;
        #period;
        if(q!==0) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        // should stay in reset
        slowena=1;
        #period;
        #period;
        if(q!==0) begin
            $display("test 2 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        // start counter
        reset=0;
        slowena=1;
        #period;
        if(q!==1) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        #period;
        if(q!==2) begin
            $display("test 4 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        #period;
        if(q!==3) begin
            $display("test 5 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        #period;
        if(q!==4) begin
            $display("test 6 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        #period;
        if(q!==5) begin
            $display("test 7 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        // pause counter
        slowena=0;
        #period;
        if(q!==5) begin
            $display("test 8 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);
        #period;
        if(q!==5) begin
            $display("test 9 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        // resume counter
        slowena=1;
        #period;
        if(q!==6) begin
            $display("test 10 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        #period;
        if(q!==7) begin
            $display("test 11 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        #period;
        if(q!==8) begin
            $display("test 12 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        #period;
        if(q!==9) begin
            $display("test 13 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        #period;
        if(q!==0) begin
            $display("test 14 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, ena=%b, q=%b",clk,reset,slowena, q);

        

        $display("all tests passed");
        $finish;



    end

endmodule