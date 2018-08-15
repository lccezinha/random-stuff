require_relative 'plan'

basic = Plan.new(:basic)
basic.output

puts "\n -- \n"

other = Plan.new(:other)
other.output
