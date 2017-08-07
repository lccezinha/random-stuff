module Repositories
  module Customer
    class ActiveRecord
      def all
        ::Customer.all.map do |customer|
          Entities::Customer.new(customer.name, customer.size)
        end
      end
    end
  end
end
