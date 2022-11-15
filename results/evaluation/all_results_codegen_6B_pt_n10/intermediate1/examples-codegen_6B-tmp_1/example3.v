// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
begin
    xfer cout, a, b;
    xfer half_sum, half_carry;
    
    while true begin
            half_sum = a + 256 * b;
            half_carry = half_sum < a ? 1 : 0;
            a = half_sum;
            b = half_carry;
            
            xfer half_sum, half_carry;
            case lead   when b = 0 then cout = 0;        cout = half_sum + half_carry;                
            case 0      when a >= 0 and b < 0 then cout = half_sum + half_carry; 
            case 1      when a < 0 and b < 0 and half_sum < 0 and half_carry = 1 then cout = half_sum + half_carry; 
            case 2      when a < 0 and b < 0 and half_sum < 0 and half_end
end
endmodule
