require "application_system_test_case"

class MappsTest < ApplicationSystemTestCase
  setup do
    @mapp = mapps(:one)
  end

  test "visiting the index" do
    visit mapps_url
    assert_selector "h1", text: "Mapps"
  end

  test "creating a Mapp" do
    visit mapps_url
    click_on "New Mapp"

    fill_in "Name", with: @mapp.name
    fill_in "Number", with: @mapp.number
    click_on "Create Mapp"

    assert_text "Mapp was successfully created"
    click_on "Back"
  end

  test "updating a Mapp" do
    visit mapps_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mapp.name
    fill_in "Number", with: @mapp.number
    click_on "Update Mapp"

    assert_text "Mapp was successfully updated"
    click_on "Back"
  end

  test "destroying a Mapp" do
    visit mapps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mapp was successfully destroyed"
  end
end
