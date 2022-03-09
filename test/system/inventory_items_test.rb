require "application_system_test_case"

class InventoryItemsTest < ApplicationSystemTestCase
  setup do
    @inventory_item = inventory_items(:one)
  end

  test "visiting the index" do
    visit inventory_items_url
    assert_selector "h1", text: "Inventory Items"
  end

  test "creating a Inventory item" do
    visit inventory_items_url
    click_on "New Inventory Item"

    fill_in "Account", with: @inventory_item.account_id
    check "Active" if @inventory_item.active
    fill_in "Category", with: @inventory_item.category
    fill_in "Description", with: @inventory_item.description
    fill_in "Name", with: @inventory_item.name
    fill_in "Price", with: @inventory_item.price
    fill_in "Stock", with: @inventory_item.stock
    fill_in "Type", with: @inventory_item.type
    click_on "Create Inventory item"

    assert_text "Inventory item was successfully created"
    click_on "Back"
  end

  test "updating a Inventory item" do
    visit inventory_items_url
    click_on "Edit", match: :first

    fill_in "Account", with: @inventory_item.account_id
    check "Active" if @inventory_item.active
    fill_in "Category", with: @inventory_item.category
    fill_in "Description", with: @inventory_item.description
    fill_in "Name", with: @inventory_item.name
    fill_in "Price", with: @inventory_item.price
    fill_in "Stock", with: @inventory_item.stock
    fill_in "Type", with: @inventory_item.type
    click_on "Update Inventory item"

    assert_text "Inventory item was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory item" do
    visit inventory_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory item was successfully destroyed"
  end
end
