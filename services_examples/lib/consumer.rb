require_relative 'random_service'

class Consumer
  def initialize
    @service = RandomService.build
  end

  def print
    service.call
  end

  private

  attr_reader :service
end
