require_relative 'third_party_lib'

class ThirdPartyService
  def self.build
    new(client: ::ThirdPartyLib.new)
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
