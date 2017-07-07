require 'minitest/autorun'
require_relative '../lib/another_lib_service'

class AnotherLibServiceTest < Minitest::Test
  def test_with_default_third_party_lib
    @service = AnotherLibService.build

    assert_equal @service.call, "AnotherLib Execute..."
  end
end
