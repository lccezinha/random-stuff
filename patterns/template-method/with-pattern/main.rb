require_relative 'basic_plan'
require_relative 'premium_plan'

basic = BasicPlan.new
basic.output

puts "\n -- \n"

premium = PremiumPlan.new
premium.output
