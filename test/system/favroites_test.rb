require "application_system_test_case"

class FavroitesTest < ApplicationSystemTestCase
  setup do
    @favroite = favroites(:one)
  end

  test "visiting the index" do
    visit favroites_url
    assert_selector "h1", text: "Favroites"
  end

  test "creating a Favroite" do
    visit favroites_url
    click_on "New Favroite"

    fill_in "Show", with: @favroite.show_id
    fill_in "User", with: @favroite.user_id
    click_on "Create Favroite"

    assert_text "Favroite was successfully created"
    click_on "Back"
  end

  test "updating a Favroite" do
    visit favroites_url
    click_on "Edit", match: :first

    fill_in "Show", with: @favroite.show_id
    fill_in "User", with: @favroite.user_id
    click_on "Update Favroite"

    assert_text "Favroite was successfully updated"
    click_on "Back"
  end

  test "destroying a Favroite" do
    visit favroites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Favroite was successfully destroyed"
  end
end
