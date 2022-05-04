require "application_system_test_case"

class BrandCategoriesTest < ApplicationSystemTestCase
  setup do
    @brand_category = brand_categories(:one)
  end

  test "visiting the index" do
    visit brand_categories_url
    assert_selector "h1", text: "Brand categories"
  end

  test "should create brand category" do
    visit brand_categories_url
    click_on "New brand category"

    fill_in "Nama merk kategori", with: @brand_category.nama_merk_kategori
    click_on "Create Brand category"

    assert_text "Brand category was successfully created"
    click_on "Back"
  end

  test "should update Brand category" do
    visit brand_category_url(@brand_category)
    click_on "Edit this brand category", match: :first

    fill_in "Nama merk kategori", with: @brand_category.nama_merk_kategori
    click_on "Update Brand category"

    assert_text "Brand category was successfully updated"
    click_on "Back"
  end

  test "should destroy Brand category" do
    visit brand_category_url(@brand_category)
    click_on "Destroy this brand category", match: :first

    assert_text "Brand category was successfully destroyed"
  end
end
