require "application_system_test_case"

class BrandSubcategoriesTest < ApplicationSystemTestCase
  setup do
    @brand_subcategory = brand_subcategories(:one)
  end

  test "visiting the index" do
    visit brand_subcategories_url
    assert_selector "h1", text: "Brand subcategories"
  end

  test "should create brand subcategory" do
    visit brand_subcategories_url
    click_on "New brand subcategory"

    fill_in "Nama merk subkategori", with: @brand_subcategory.nama_merk_subkategori
    click_on "Create Brand subcategory"

    assert_text "Brand subcategory was successfully created"
    click_on "Back"
  end

  test "should update Brand subcategory" do
    visit brand_subcategory_url(@brand_subcategory)
    click_on "Edit this brand subcategory", match: :first

    fill_in "Nama merk subkategori", with: @brand_subcategory.nama_merk_subkategori
    click_on "Update Brand subcategory"

    assert_text "Brand subcategory was successfully updated"
    click_on "Back"
  end

  test "should destroy Brand subcategory" do
    visit brand_subcategory_url(@brand_subcategory)
    click_on "Destroy this brand subcategory", match: :first

    assert_text "Brand subcategory was successfully destroyed"
  end
end
