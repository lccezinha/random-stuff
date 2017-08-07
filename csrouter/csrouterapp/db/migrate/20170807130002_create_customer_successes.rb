class CreateCustomerSuccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_successes do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
