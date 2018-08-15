require_relative 'base'

class BasicPlan < Base
  def title
    "I'm the basic plan"
  end

  def description
    "My description of basic plan"
  end

  def benefits
    ['It is free', 'Access to one account', 'Basic features'].join(', ')
  end
end
