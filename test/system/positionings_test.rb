require "application_system_test_case"

class PositioningsTest < ApplicationSystemTestCase
  setup do
    @positioning = positionings(:one)
  end

  test "visiting the index" do
    visit positionings_url
    assert_selector "h1", text: "Positionings"
  end

  test "creating a Positioning" do
    visit positionings_url
    click_on "New Positioning"

    fill_in "Player", with: @positioning.player_id
    fill_in "Position", with: @positioning.position_id
    click_on "Create Positioning"

    assert_text "Positioning was successfully created"
    click_on "Back"
  end

  test "updating a Positioning" do
    visit positionings_url
    click_on "Edit", match: :first

    fill_in "Player", with: @positioning.player_id
    fill_in "Position", with: @positioning.position_id
    click_on "Update Positioning"

    assert_text "Positioning was successfully updated"
    click_on "Back"
  end

  test "destroying a Positioning" do
    visit positionings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Positioning was successfully destroyed"
  end
end
