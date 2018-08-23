class TextParser
  attr_accessor :text, :parser

  def initialize(text, parser)
    @text   = text
    @parser = parser
  end

  def parse
    if parser == :json
      "{ text: #{text} }"
    elsif parser == :xml
      "<text>#{text}</text>"
    end
  end
end
