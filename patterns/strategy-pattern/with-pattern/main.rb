require_relative 'parsers'

parser_xml = TextParser.new('My Text', XMLParser.new)
parser_xml.parse

puts "\n -- \n"

parser_json = TextParser.new('My Text', JSONParser.new)
parser_json.parse
