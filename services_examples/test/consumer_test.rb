require 'minitest/autorun'
require_relative '../lib/consumer'
require_relative '../lib/random_service'
require_relative '../lib/another_lib'
require_relative '../lib/third_party_lib'

class ConsumerTest < Minitest::Test
  def test_with_default_third_party_lib
    @consumer = Consumer.new

    assert_equal @consumer.print, "ThirdPartyLib Execute..."
  end
end
