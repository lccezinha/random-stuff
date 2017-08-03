require 'minitest/autorun'
require_relative '../../lib/entities/customer'
require_relative '../../lib/entities/customer_success'
require_relative '../../lib/use_cases/distribute_customer'

module UseCases
  class DistributeCustomerTest < Minitest::Test
    def setup
      @customer = Entities::Customer.new('Name', 20)
      @customer_success = Entities::CustomerSuccess.new('T Lu Silva', 40)
      @customer_repository = FakeCustomerRepository.new([@customer])
      @customer_success_repository = FakeCustomerSuccessRepository.new([@customer_success])
      @use_case = UseCases::DistributeCustomer.new(@customer_repository, @customer_success_repository)
    end

    def test_one_customer_served_by_one_cs
      expected = { @customer_success => [@customer] }

      assert_equal expected, @use_case.run
    end

    def test_one_customer_not_served_by_one_cs
      @customer.size = 50

      expected = { @customer_success => [] }

      assert_equal expected, @use_case.run
    end

    def test_two_customers_served_by_one_cs
      customer_two = Entities::Customer.new('Name', 30)
      @customer_repository.customers << customer_two

      expected = { @customer_success => [@customer, customer_two] }

      assert_equal expected, @use_case.run
    end

    def test_two_customers_served_by_two_cs
      customer_success_two = Entities::CustomerSuccess.new('Tanaka goldenboy', 60)
      customer_two = Entities::Customer.new('Name', 50)

      @customer_repository.customers = [@customer, customer_two]
      @customer_success_repository.customer_successess = [@customer_success, customer_success_two]

      expected = {
        @customer_success => [@customer],
        customer_success_two => [customer_two]
      }

      assert_equal expected, @use_case.run
    end

    def test_one_customer_not_served
      customer_success_two = Entities::CustomerSuccess.new('Tanaka goldenboy', 60)
      customer_two = Entities::Customer.new('Name', 50)
      customer_three = Entities::Customer.new('Name', 100)

      @customer_repository.customers = [@customer, customer_two, customer_three]
      @customer_success_repository.customer_successess = [@customer_success, customer_success_two]

      expected = {
        @customer_success => [@customer],
        customer_success_two => [customer_two]
      }

      assert_equal expected, @use_case.run
    end

    def test_long_list_unordered
      customers = []
      customers << Entities::Customer.new('name', 90)
      customers << Entities::Customer.new('name', 20)
      customers << Entities::Customer.new('name', 70)
      customers << Entities::Customer.new('name', 40)
      customers << Entities::Customer.new('name', 60)
      customers << Entities::Customer.new('name', 10)
      customers << Entities::Customer.new('name', 50)
      customers << Entities::Customer.new('name', 100)
      customers << Entities::Customer.new('name', 80)
      customers << Entities::Customer.new('name', 30)

      css = []
      css << Entities::CustomerSuccess.new('name', 20)
      css << Entities::CustomerSuccess.new('name', 60)
      css << Entities::CustomerSuccess.new('name', 90)
      css << Entities::CustomerSuccess.new('name', 40)
      css << Entities::CustomerSuccess.new('name', 70)
      css << Entities::CustomerSuccess.new('name', 50)

      @customer_repository.customers = customers
      @customer_success_repository.customer_successess = css

      expected = {
        css[0] => [customers[1], customers[5]],
        css[1] => [customers[4]],
        css[2] => [customers[0], customers[8]],
        css[3] => [customers[3], customers[9]],
        css[4] => [customers[2]],
        css[5] => [customers[6]]
      }

      assert_equal expected, @use_case.run
    end
  end

  class FakeCustomerRepository
    attr_accessor :customers

    def initialize(customers)
      @customers = customers
    end

    def all
      @customers
    end
  end

  class FakeCustomerSuccessRepository
    attr_accessor :customer_successess

    def initialize(customer_successess)
      @customer_successess = customer_successess
    end

    def all
      @customer_successess
    end
  end
end
