require_relative 'another_lib'

class AnotherLibService
  def self.build
    new(client: ::AnotherLib.new)
  end

  def initialize(client:)
    @client = client
  end

  def call
    client.execute
  end

  private

  attr_reader :client
end
