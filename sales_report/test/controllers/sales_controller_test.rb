require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post :create, sale: { cheque_cleared: @sale.cheque_cleared, cheque_date: @sale.cheque_date, cheque_no: @sale.cheque_no, customer_name: @sale.customer_name, days: @sale.days, delvery_note_date: @sale.delvery_note_date, delvery_note_number: @sale.delvery_note_number, interest: @sale.interest, particuars: @sale.particuars, payment_term_days: @sale.payment_term_days, payment_term_due_date: @sale.payment_term_due_date, ppn: @sale.ppn, quantity: @sale.quantity, remarks: @sale.remarks, status: @sale.status, tatal_amount: @sale.tatal_amount, tax_invoice_date: @sale.tax_invoice_date, tax_invoice_number: @sale.tax_invoice_number, unit_price: @sale.unit_price, value: @sale.value }
    end

    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should show sale" do
    get :show, id: @sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale
    assert_response :success
  end

  test "should update sale" do
    patch :update, id: @sale, sale: { cheque_cleared: @sale.cheque_cleared, cheque_date: @sale.cheque_date, cheque_no: @sale.cheque_no, customer_name: @sale.customer_name, days: @sale.days, delvery_note_date: @sale.delvery_note_date, delvery_note_number: @sale.delvery_note_number, interest: @sale.interest, particuars: @sale.particuars, payment_term_days: @sale.payment_term_days, payment_term_due_date: @sale.payment_term_due_date, ppn: @sale.ppn, quantity: @sale.quantity, remarks: @sale.remarks, status: @sale.status, tatal_amount: @sale.tatal_amount, tax_invoice_date: @sale.tax_invoice_date, tax_invoice_number: @sale.tax_invoice_number, unit_price: @sale.unit_price, value: @sale.value }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
