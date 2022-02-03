require "application_system_test_case"

class MangasTest < ApplicationSystemTestCase
  setup do
    @manga = mangas(:one)
  end

  test "visiting the index" do
    visit mangas_url
    assert_selector "h1", text: "Mangas"
  end

  test "should create manga" do
    visit mangas_url
    click_on "New manga"

    fill_in "Collection", with: @manga.collection
    fill_in "Mis vols", with: @manga.mis_vols
    fill_in "Own vols", with: @manga.own_vols
    fill_in "Pub vols", with: @manga.pub_vols
    fill_in "Status", with: @manga.status
    fill_in "Title", with: @manga.title
    click_on "Create Manga"

    assert_text "Manga was successfully created"
    click_on "Back"
  end

  test "should update Manga" do
    visit manga_url(@manga)
    click_on "Edit this manga", match: :first

    fill_in "Collection", with: @manga.collection
    fill_in "Mis vols", with: @manga.mis_vols
    fill_in "Own vols", with: @manga.own_vols
    fill_in "Pub vols", with: @manga.pub_vols
    fill_in "Status", with: @manga.status
    fill_in "Title", with: @manga.title
    click_on "Update Manga"

    assert_text "Manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Manga" do
    visit manga_url(@manga)
    click_on "Destroy this manga", match: :first

    assert_text "Manga was successfully destroyed"
  end
end
