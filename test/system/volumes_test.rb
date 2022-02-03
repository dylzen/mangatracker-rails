require "application_system_test_case"

class VolumesTest < ApplicationSystemTestCase
  setup do
    @volume = volumes(:one)
  end

  test "visiting the index" do
    visit volumes_url
    assert_selector "h1", text: "Volumes"
  end

  test "should create volume" do
    visit volumes_url
    click_on "New volume"

    fill_in "Manga", with: @volume.manga_id
    fill_in "Number", with: @volume.number
    fill_in "Price", with: @volume.price
    fill_in "Rel date", with: @volume.rel_date
    click_on "Create Volume"

    assert_text "Volume was successfully created"
    click_on "Back"
  end

  test "should update Volume" do
    visit volume_url(@volume)
    click_on "Edit this volume", match: :first

    fill_in "Manga", with: @volume.manga_id
    fill_in "Number", with: @volume.number
    fill_in "Price", with: @volume.price
    fill_in "Rel date", with: @volume.rel_date
    click_on "Update Volume"

    assert_text "Volume was successfully updated"
    click_on "Back"
  end

  test "should destroy Volume" do
    visit volume_url(@volume)
    click_on "Destroy this volume", match: :first

    assert_text "Volume was successfully destroyed"
  end
end
