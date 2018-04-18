require "application_system_test_case"

class MineralsTest < ApplicationSystemTestCase
  setup do
    @mineral = minerals(:one)
  end

  test "visiting the index" do
    visit minerals_url
    assert_selector "h1", text: "Minerals"
  end

  test "creating a Mineral" do
    visit minerals_url
    click_on "New Mineral"

    fill_in "Name", with: @mineral.name
    click_on "Create Mineral"

    assert_text "Mineral was successfully created"
    click_on "Back"
  end

  test "updating a Mineral" do
    visit minerals_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mineral.name
    click_on "Update Mineral"

    assert_text "Mineral was successfully updated"
    click_on "Back"
  end

  test "destroying a Mineral" do
    visit minerals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mineral was successfully destroyed"
  end
end
