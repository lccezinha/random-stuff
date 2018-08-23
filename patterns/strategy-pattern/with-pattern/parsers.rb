class BaseParser
  def parse(text)
    raise 'Must implement!'
  end
end

###

class XMLParser < BaseParser
  def parse(text)
    "<text>#{text}</text>"
  end
end

###

class JSONParser < BaseParser
  def parse(text)
    "{ text: #{text} }"
  end
end

###

class TextParser
  attr_reader :text, :parser

  def initialize(text, parser)
    @text = text
    @parser = parser
  end

  def parse
    puts(parser.parse(text))
  end
end
