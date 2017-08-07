require File.join(Rails.root.to_s, 'config', 'initializers', 'require')
Repositories.customer = Repositories::Customer::ActiveRecord.new
Repositories.customer_success = Repositories::CustomerSuccess::ActiveRecord.new
