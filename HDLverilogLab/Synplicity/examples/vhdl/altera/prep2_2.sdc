puts  ""
puts "*Beginning of constraints file"
# Put a scalar signal on a pad location 159
define_attribute SEL altera_chip_pin_lc "@159"
# Assign pad locations to all bits of a bus
define_attribute {DATA0[7:0]} altera_chip_pin_lc "@120,@121,@122,@123,@124,@125,@126,@127"
# Assign pad locations to 2 bits of an 8 bit bus
define_attribute {DATA1[3]} altera_chip_pin_lc "@113"
define_attribute {DATA1[7]} altera_chip_pin_lc "@117"
puts "*End of constraints"
puts  ""
