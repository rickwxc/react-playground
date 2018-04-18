require "application_system_test_case"

class LocsTest < ApplicationSystemTestCase
  setup do
    @loc = locs(:one)
  end

  test "visiting the index" do
    visit locs_url
    assert_selector "h1", text: "Locs"
  end

  test "creating a Loc" do
    visit locs_url
    click_on "New Loc"

    fill_in "X", with: @loc.x
    fill_in "Y", with: @loc.y
    click_on "Create Loc"

    assert_text "Loc was successfully created"
    click_on "Back"
  end

  test "updating a Loc" do
    visit locs_url
    click_on "Edit", match: :first

    fill_in "X", with: @loc.x
    fill_in "Y", with: @loc.y
    click_on "Update Loc"

    assert_text "Loc was successfully updated"
    click_on "Back"
  end

  test "destroying a Loc" do
    visit locs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loc was successfully destroyed"
  end
end
