require "application_system_test_case"

class Star2mineralsTest < ApplicationSystemTestCase
  setup do
    @star2mineral = star2minerals(:one)
  end

  test "visiting the index" do
    visit star2minerals_url
    assert_selector "h1", text: "Star2minerals"
  end

  test "creating a Star2mineral" do
    visit star2minerals_url
    click_on "New Star2mineral"

    fill_in "Loc", with: @star2mineral.loc_id
    fill_in "Max Qty", with: @star2mineral.max_qty
    fill_in "Mineral", with: @star2mineral.mineral_id
    fill_in "Star", with: @star2mineral.star_id
    click_on "Create Star2mineral"

    assert_text "Star2mineral was successfully created"
    click_on "Back"
  end

  test "updating a Star2mineral" do
    visit star2minerals_url
    click_on "Edit", match: :first

    fill_in "Loc", with: @star2mineral.loc_id
    fill_in "Max Qty", with: @star2mineral.max_qty
    fill_in "Mineral", with: @star2mineral.mineral_id
    fill_in "Star", with: @star2mineral.star_id
    click_on "Update Star2mineral"

    assert_text "Star2mineral was successfully updated"
    click_on "Back"
  end

  test "destroying a Star2mineral" do
    visit star2minerals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Star2mineral was successfully destroyed"
  end
end
