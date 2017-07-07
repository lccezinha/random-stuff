require 'minitest/autorun'
require_relative '../lib/random_service'
require_relative '../lib/another_lib'
require_relative '../lib/third_party_lib'

class RandomServiceTest < Minitest::Test
  def test_with_default_third_party_lib
    @random_service = RandomService.new

    assert_equal @random_service.call, "ThirdPartyLib Execute..."
  end

  def test_with_another_lib
    @random_service = RandomService.new(client: ::AnotherLib.new)

    assert_equal @random_service.call, "AnotherLib Execute..."
  end
end
