// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

[[code]]
 [[code]]

/** Bit is the number of sync, data and/or internal registers. */
param bit

/** The 'internal_registers' bits are a single register. The bits for sync, data and internal registers are connected to the same bit number.*/
param int register_type

/** Number of assert on errors. */
param int assert_on_assert_failure

/** Zero bit observed between syncs. Defines when a zero is written indicating that ok() is done. */
param int half_adder_zero_pulse

/** Counter for internal registers*/
param int internal_registers

/** Type of encoding register expected on external pins. Volatile because of conditions_reg access.*/
param int register_encode

/** Configuration variable for number of external pins. */
param int external_pins

/** SI5. It's (log2endmodule
