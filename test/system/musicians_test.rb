require "application_system_test_case"

class MusiciansTest < ApplicationSystemTestCase
  setup do
    @musician = musicians(:one)
  end

  test "visiting the index" do
    visit musicians_url
    assert_selector "h1", text: "Musicians"
  end

  test "should create musician" do
    visit musicians_url
    click_on "New musician"

    fill_in "Daw", with: @musician.daw
    fill_in "Experience", with: @musician.experience
    fill_in "Genre", with: @musician.genre
    click_on "Create Musician"

    assert_text "Musician was successfully created"
    click_on "Back"
  end

  test "should update Musician" do
    visit musician_url(@musician)
    click_on "Edit this musician", match: :first

    fill_in "Daw", with: @musician.daw
    fill_in "Experience", with: @musician.experience
    fill_in "Genre", with: @musician.genre
    click_on "Update Musician"

    assert_text "Musician was successfully updated"
    click_on "Back"
  end

  test "should destroy Musician" do
    visit musician_url(@musician)
    click_on "Destroy this musician", match: :first

    assert_text "Musician was successfully destroyed"
  end
end
