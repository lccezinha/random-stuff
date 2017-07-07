require 'minitest/autorun'
require_relative '../lib/third_party_lib'

class ThirdPartyLibTest < Minitest::Test
  def setup
    @third_party_lib = ThirdPartyLib.new
  end

  def test_execute
    assert_equal @third_party_lib.execute, "ThirdPartyLib Execute..."
  end
end
