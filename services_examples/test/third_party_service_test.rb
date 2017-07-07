require 'minitest/autorun'
require_relative '../lib/third_party_service'

class ThirdPartyServiceTest < Minitest::Test
  def test_with_default_third_party_lib
    @service = ThirdPartyService.build

    assert_equal @service.call, "ThirdPartyLib Execute..."
  end
end
