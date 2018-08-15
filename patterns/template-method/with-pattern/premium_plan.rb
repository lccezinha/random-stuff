require_relative 'base'

class PremiumPlan < Base
  def title
    "I'm the premium plan"
  end

  def description
    "My description of premium plan"
  end

  def benefits
    [
      'It will cost USD 10.00',
      'Access to ten accounts',
      'Premium features', 'I will receive a gitf in on birthday'
    ].join(', ')
  end
end
