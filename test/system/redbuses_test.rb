require "application_system_test_case"

class RedbusesTest < ApplicationSystemTestCase
  setup do
    @redbus = redbuses(:one)
  end

  test "visiting the index" do
    visit redbuses_url
    assert_selector "h1", text: "Redbuses"
  end

  test "creating a Redbus" do
    visit redbuses_url
    click_on "New Redbus"

    fill_in "Account", with: @redbus.account
    fill_in "Name", with: @redbus.name
    fill_in "Offers", with: @redbus.offers
    click_on "Create Redbus"

    assert_text "Redbus was successfully created"
    click_on "Back"
  end

  test "updating a Redbus" do
    visit redbuses_url
    click_on "Edit", match: :first

    fill_in "Account", with: @redbus.account
    fill_in "Name", with: @redbus.name
    fill_in "Offers", with: @redbus.offers
    click_on "Update Redbus"

    assert_text "Redbus was successfully updated"
    click_on "Back"
  end

  test "destroying a Redbus" do
    visit redbuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Redbus was successfully destroyed"
  end
end
