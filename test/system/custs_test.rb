require "application_system_test_case"

class CustsTest < ApplicationSystemTestCase
  setup do
    @cust = custs(:one)
  end

  test "visiting the index" do
    visit custs_url
    assert_selector "h1", text: "Custs"
  end

  test "creating a Cust" do
    visit custs_url
    click_on "New Cust"

    fill_in "Address", with: @cust.address
    fill_in "Dob", with: @cust.dob
    fill_in "Email", with: @cust.email
    fill_in "Mobile", with: @cust.mobile
    fill_in "Name", with: @cust.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create Cust"

    assert_text "Cust was successfully created"
    click_on "Back"
  end

  test "updating a Cust" do
    visit custs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @cust.address
    fill_in "Dob", with: @cust.dob
    fill_in "Email", with: @cust.email
    fill_in "Mobile", with: @cust.mobile
    fill_in "Name", with: @cust.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update Cust"

    assert_text "Cust was successfully updated"
    click_on "Back"
  end

  test "destroying a Cust" do
    visit custs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cust was successfully destroyed"
  end
end
