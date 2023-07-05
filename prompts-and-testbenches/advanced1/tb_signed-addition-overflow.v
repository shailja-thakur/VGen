
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_signed_adder;

    reg [7:0] a,b;
    wire [7:0] s;
    wire overflow;

    integer increment_a = 0;
    
    // duration for each bit = 2 * timescale = 2 * 1 ns  = 2ns
    localparam period = 2;  

    signed_adder UUT (.a(a), .b(b), .s(s), .overflow(overflow) );
    
    initial // initial block executes only once
        begin

            // values for inputs
            a = 0; b= 0;
            while (b<8'b1111_1111) begin

                #period; // wait for period 
                if (s!==a+b || overflow!==(a[7]&&b[7]&&(~s[7]) || (~a[7])&&(~b[7])&&(s[7])) ) begin
                    $display("test failed");
                    $display("  a = %b , b = %b, sum=%b, overflow = %b", a,b,s,overflow);
                    $finish;
                end
                $display("  a = %b , b = %b, sum=%b, overflow = %b", a,b,s,overflow);

                if (increment_a) a = a+1;
                else b = b+1;

                if (increment_a) increment_a = 0;
                else increment_a=1; 
            end
        
            $display("all tests passed");
            $finish;

        end

endmodule