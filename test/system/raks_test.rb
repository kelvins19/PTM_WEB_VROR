require "application_system_test_case"

class RaksTest < ApplicationSystemTestCase
  setup do
    @rak = raks(:one)
  end

  test "visiting the index" do
    visit raks_url
    assert_selector "h1", text: "Raks"
  end

  test "should create rak" do
    visit raks_url
    click_on "New rak"

    fill_in "Nama rak", with: @rak.nama_rak
    fill_in "String", with: @rak.string
    click_on "Create Rak"

    assert_text "Rak was successfully created"
    click_on "Back"
  end

  test "should update Rak" do
    visit rak_url(@rak)
    click_on "Edit this rak", match: :first

    fill_in "Nama rak", with: @rak.nama_rak
    fill_in "String", with: @rak.string
    click_on "Update Rak"

    assert_text "Rak was successfully updated"
    click_on "Back"
  end

  test "should destroy Rak" do
    visit rak_url(@rak)
    click_on "Destroy this rak", match: :first

    assert_text "Rak was successfully destroyed"
  end
end
