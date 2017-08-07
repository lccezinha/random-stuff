module Entities
  class Customer
    attr_accessor :name, :size

    def initialize(name, size)
      @name = name
      @size = size
    end

    def to_s
      "#{name} - #{size}"
    end
  end
end
