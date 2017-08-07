module Repositories
  def self.customer
    @customer ||= Repositories::Customer::Memory.new
  end

  def self.customer_success
    @customer_success ||= Repositories::CustomerSuccess::Memory.new
  end

  def self.customer=(rep)
    @customer = rep
  end

  def self.customer_success=(rep)
    @customer_success = rep
  end
end
