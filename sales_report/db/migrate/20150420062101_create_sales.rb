class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :customer_name
      t.date :delvery_note_date
      t.integer :delvery_note_number
      t.date :tax_invoice_date
      t.integer :tax_invoice_number
      t.string :particuars
      t.string :quantity
      t.string :unit_price
      t.string :value
      t.string :ppn
      t.string :tatal_amount
      t.date :payment_term_days
      t.date :payment_term_due_date
      t.date :cheque_date
      t.integer :cheque_no
      t.string :cheque_cleared
      t.string :status
      t.string :days
      t.string :interest
      t.string :remarks
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :sales, :users
  end
end
