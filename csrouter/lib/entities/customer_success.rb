module Entities
  class CustomerSuccess
    attr_accessor :name, :level

    def initialize(name, level)
      @name = name
      @level = level
    end
  end
end
