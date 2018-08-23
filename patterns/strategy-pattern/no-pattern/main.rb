require_relative 'parser'

parser_xml = TextParser.new('My Text', :xml)
parser_xml.parse

puts "\n -- \n"

parser_json = TextParser.new('My Text', :json)
parser_json.parse
