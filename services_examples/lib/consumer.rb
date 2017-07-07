require_relative '../lib/third_party_service'
require_relative '../lib/another_lib_service'

class Consumer
  def initialize(service:)
    @service = service
  end

  def print
    service.call
  end

  private

  attr_reader :service
end
