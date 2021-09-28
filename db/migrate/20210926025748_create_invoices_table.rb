class CreateInvoicesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.integer :price
      t.integer :quantity
      t.string :payment_status
      t.timestamp :created_at
      t.datetime :due_by
    end
  end
end
