require_relative 'random_service'

class Consumer
  def initialize(client: ThirdPartyLib.new)
    @service = RandomService.build(client: client)
  end

  def print
    service.call
  end

  private

  attr_reader :service
end
