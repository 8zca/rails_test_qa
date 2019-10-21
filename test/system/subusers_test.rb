require "application_system_test_case"

class SubusersTest < ApplicationSystemTestCase
  setup do
    @subuser = subusers(:one)
  end

  test "visiting the index" do
    visit subusers_url
    assert_selector "h1", text: "Subusers"
  end

  test "creating a Subuser" do
    visit subusers_url
    click_on "New Subuser"

    fill_in "Avatar path", with: @subuser.avatar_path
    fill_in "Name", with: @subuser.name
    click_on "Create Subuser"

    assert_text "Subuser was successfully created"
    click_on "Back"
  end

  test "updating a Subuser" do
    visit subusers_url
    click_on "Edit", match: :first

    fill_in "Avatar path", with: @subuser.avatar_path
    fill_in "Name", with: @subuser.name
    click_on "Update Subuser"

    assert_text "Subuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Subuser" do
    visit subusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subuser was successfully destroyed"
  end
end
