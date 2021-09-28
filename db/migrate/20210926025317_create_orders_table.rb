class CreateOrdersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :style_number
      t.string :color 
      t.string :size
      t.string :print_color
      t.string :print_location
      t.datetime :due_date
      t.integer :customer_id
      t.string :order_status
      t.timestamp :created_at
    end
  end
end
