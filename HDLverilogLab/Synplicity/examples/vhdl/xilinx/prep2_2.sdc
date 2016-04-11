puts  ""
puts "*Beginning of constraints file"
# Assign a location for scalar Port "SEL".
define_attribute SEL xc_loc "C13"
#  Assign a pad location to all bits of a bus.
define_attribute {DATA0[7:0]} xc_loc "P14, P12, P11, P5, P21, P18, P16, P15"
# assign a fast output type to the pad
define_attribute {DATA0[5]} xc_fast 1
puts "*End of constraints"
puts  ""

