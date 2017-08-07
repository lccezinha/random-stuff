class HomeController < ApplicationController
  def index
    @result = UseCases.distribute_customer.run
  end
end
