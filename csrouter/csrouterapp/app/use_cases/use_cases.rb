module UseCases
  def self.distribute_customer
    UseCases::DistributeCustomer.new(
      Repositories.customer, Repositories.customer_success
    )
  end
end
