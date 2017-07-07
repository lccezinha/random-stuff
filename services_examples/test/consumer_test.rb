require 'minitest/autorun'
require_relative '../lib/consumer'

class ConsumerTest < Minitest::Test
  def test_with_third_party_service
    @consumer = Consumer.new(service: ::ThirdPartyService.build)

    assert_equal @consumer.print, "ThirdPartyLib Execute..."
  end
  #
  def test_with_another_lib_service
    @consumer = Consumer.new(service: ::AnotherLibService.build)

    assert_equal @consumer.print, "AnotherLib Execute..."
  end
end
