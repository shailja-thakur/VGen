
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_left_rotate;

    reg clk, load;
    reg [2:0] amount;
    reg [7:0] data;
    wire [7:0] out;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    left_rotate UUT (.clk(clk), .load(load), .amount(amount), .data(data), .out(out) );

    initial // Clock generation
        begin
        clk = 0;
        forever begin
        #(period/2);
        clk = ~clk;
        end
    end

    initial begin

        // load data (load not enabled, should not load)
        data = 8'hff;
        load = 0;
        amount = 0;
        #period;
        if(out===8'hff) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);

        // enable load
        data = 8'haa;
        load = 1;
        amount = 0;
        #period;
        if(out!==8'haa) begin
            $display("test 2 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);

        // enable load, amount should not make a difference
        data = 8'h01;
        load = 1;
        amount = 2;
        #period;
        if(out!==8'h01) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);

        // shift
        load = 0;
        amount = 1;
        #period;
        if(out!==8'h02) begin
            $display("test 4 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);
        amount = 2;
        #period;
        if(out!==8'h08) begin
            $display("test 5 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);
        amount = 3;
        #period;
        if(out!==8'h40) begin
            $display("test 6 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);
        amount = 4;
        #period;
        if(out!==8'h04) begin
            $display("test 7 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);
        amount = 5;
        #period;
        if(out!==8'h80) begin
            $display("test 8 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);
        amount = 6;
        #period;
        if(out!==8'h20) begin
            $display("test 9 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);
        amount = 7;
        #period;
        if(out!==8'h10) begin
            $display("test 10 failed");
            $finish;
        end
        else $display("load =%b, amount = %b, out=%b",load,amount, out);

        $display("all tests passed");
        $finish;

    end

endmodule