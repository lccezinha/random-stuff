module Entities
  class CustomerSuccess
    attr_accessor :name, :level

    def initialize(name, level)
      @name = name
      @level = level
    end

    def to_s
      "#{name} - #{level}"
    end
  end
end
