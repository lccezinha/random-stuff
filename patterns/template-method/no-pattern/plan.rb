class Plan
  attr_reader :title, :description, :benefits

  def initialize(kind)
    if kind == :basic
      @title = "I'm the basic plan"
      @description = "My description of basic plan"
      @benefits = ['It is free', 'Access to one account', 'Basic features']
    else
      @title = "I'm the other plan"
      @description = "My description of other plan"
      @benefits = ['No benefits']
    end
  end

  def output
    output = <<-STRING
      Title: #{title}
      Description: #{description}
      Plan benefits: #{benefits.join(', ')}.
    STRING

    puts(output)
  end
end
