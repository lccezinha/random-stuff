require_relative 'third_party_lib'

class RandomService
  # def self.build(client: ::ThirdPartyLib.new)
  #   new(client: client)
  # end
  #
  # def initialize(client: ::ThirdPartyLib.new)
  #   @client = client
  # end
  #
  # def call
  #   client.execute
  # end
  #
  # private
  #
  # attr_reader :client
  def call
    "ThirdPartyLib Execute..."
  end
end
