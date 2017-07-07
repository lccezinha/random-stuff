require 'minitest/autorun'
require_relative '../lib/another_lib'

class AnotherLibTest < Minitest::Test
  def setup
    @third_party_lib = AnotherLib.new
  end

  def test_execute
    assert_equal @third_party_lib.execute, "AnotherLib Execute..."
  end
end
