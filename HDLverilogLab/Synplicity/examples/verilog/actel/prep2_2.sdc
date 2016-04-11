puts  ""
puts "*Beginning of constraints file"
# The following property will prevent
# Synplify from putting an HCLKBUF
# on the CLK port.
# A CLKINT will still be inserted on
# The reset line.
define_attribute CLK syn_noclockbuf 1
# Also set a high fanout limit for the clock
# so Synplify will not but a data buffer on
# the CLK line.
define_attribute CLK syn_maxfan 999

# Now for timing constraints
define_output_delay {DATA0[0]} 10.0

puts "*End of constraints"
puts  ""
