require 'minitest/autorun'
require_relative '../lib/random_service'

class RandomServiceTest < Minitest::Test
  def test_call_with_default_third_party_lib
    @random_service = RandomService.new

    assert_equal @random_service.call, "ThirdPartyLib Execute..."
  end
end
