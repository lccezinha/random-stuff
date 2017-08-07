module Repositories
  module Customer
    class Memory
      attr_accessor :customers

      def initialize(customers)
        @customers = customers
      end

      def all
        @customers
      end
    end
  end
end
