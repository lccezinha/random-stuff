module Repositories
  module CustomerSuccess
    class Memory
      attr_accessor :customer_successess

      def initialize(customer_successess)
        @customer_successess = customer_successess
      end

      def all
        @customer_successess
      end
    end
  end
end
