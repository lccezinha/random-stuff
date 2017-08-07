module UseCases
  class DistributeCustomer
    attr_reader :customer_repository, :customer_success_repository

    def initialize(customer_repository, customer_success_repository)
      @customer_repository = customer_repository
      @customer_success_repository = customer_success_repository
    end

    def run
      result = {}
      avaliable_customers = customers

      css.each do |cs|
        customers = customers_for_cs(avaliable_customers, cs)
        avaliable_customers -= customers
        result[cs] = customers
      end

      result
    end

    private

    def css
      customer_success_repository.all.sort_by(&:level)
    end

    def customers
      customer_repository.all
    end

    def customers_for_cs(customers, cs)
      customers.select do |customer|
        customer.size <= cs.level
      end
    end
  end
end
