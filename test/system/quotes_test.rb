require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "creating a Quote" do
    visit quotes_url
    click_on "New Quote"

    check "Active" if @quote.active
    fill_in "Billing address", with: @quote.billing_address
    fill_in "Customer", with: @quote.customer_id
    fill_in "Fees", with: @quote.fees
    fill_in "Purchase order", with: @quote.purchase_order_id
    fill_in "Quote type", with: @quote.quote_type
    fill_in "Shipping address", with: @quote.shipping_address
    fill_in "Status", with: @quote.status
    fill_in "Taxes", with: @quote.taxes
    fill_in "Total", with: @quote.total
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "updating a Quote" do
    visit quotes_url
    click_on "Edit", match: :first

    check "Active" if @quote.active
    fill_in "Billing address", with: @quote.billing_address
    fill_in "Customer", with: @quote.customer_id
    fill_in "Fees", with: @quote.fees
    fill_in "Purchase order", with: @quote.purchase_order_id
    fill_in "Quote type", with: @quote.quote_type
    fill_in "Shipping address", with: @quote.shipping_address
    fill_in "Status", with: @quote.status
    fill_in "Taxes", with: @quote.taxes
    fill_in "Total", with: @quote.total
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "destroying a Quote" do
    visit quotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quote was successfully destroyed"
  end
end
