json.array!(@sales) do |sale|
  json.extract! sale, :id, :customer_name, :delvery_note_date, :delvery_note_number, :tax_invoice_date, :tax_invoice_number, :particuars, :quantity, :unit_price, :value, :ppn, :tatal_amount, :payment_term_days, :payment_term_due_date, :cheque_date, :cheque_no, :cheque_cleared, :status, :days, :interest, :remarks
  json.url sale_url(sale, format: :json)
end
