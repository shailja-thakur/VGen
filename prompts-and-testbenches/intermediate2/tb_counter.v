
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_counter;

    reg clk, reset;
    wire [3:0] q;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    counter UUT (.clk(clk), .reset(reset), .q(q) );

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
        if(q!==1) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, q=%b",clk,reset, q);

        // check value does not change during reset
        #period;
        if(q!==1) begin
            $display("test 1a failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, q=%b",clk,reset, q);

        // start counter
        reset = 0;
        #period;
        if(q!==2) begin
            $display("test 2 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==3) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==4) begin
            $display("test 4 failed");
            //$finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5) begin
            $display("test 5 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==6) begin
            $display("test 6 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==7) begin
            $display("test 7 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==8) begin
            $display("test 8 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==9) begin
            $display("test 9 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==10) begin
            $display("test 10 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==11) begin
            $display("test 11 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==12) begin
            $display("test 12 failed");
            $finish;
        end
        else $display("q=%b",q);

        // counter should go back to 1
        #period;
        if(q!==1) begin
            $display("test 13 failed");
            $finish;
        end
        else $display("q=%b",q);
        

        // check reset after a few cycles
        #period;
        if(q!==2) begin
            $display("test 14 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==3) begin
            $display("test 15 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==4) begin
            $display("test 16 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5) begin
            $display("test 17 failed");
            $finish;
        end
        else $display("q=%b",q);

        reset = 1;
        #period;
        if(q!==1) begin
            $display("test 18 failed");
            $finish;
        end
        else $display("q=%b",q);


        $display("all tests passed");
        $finish;

    end

endmodule