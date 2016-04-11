puts  ""
puts "*Beginning of constraints file"
# Request that the Port SEL use an "BIDIR" pad type
define_attribute SEL ql_padtype "BIDIR"
# Assign placement locations to all bits of the bus.
define_attribute {DATA0[7:0]} ql_placement "IO7,IO6,IO5,IO4,IO3,IO2,IO1,IO0"
# Assign pad location to 2 bits of an 8 bit bus
define_attribute {DATA1[3]} ql_placement "IO23"
define_attribute {DATA1[7]} ql_placement "IO27"
puts "*End of constraints"
puts  ""
