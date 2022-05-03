require "test_helper"

class BrandSubcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand_subcategory = brand_subcategories(:one)
  end

  test "should get index" do
    get brand_subcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_subcategory_url
    assert_response :success
  end

  test "should create brand_subcategory" do
    assert_difference("BrandSubcategory.count") do
      post brand_subcategories_url, params: { brand_subcategory: { nama_merk_subkategori: @brand_subcategory.nama_merk_subkategori } }
    end

    assert_redirected_to brand_subcategory_url(BrandSubcategory.last)
  end

  test "should show brand_subcategory" do
    get brand_subcategory_url(@brand_subcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_subcategory_url(@brand_subcategory)
    assert_response :success
  end

  test "should update brand_subcategory" do
    patch brand_subcategory_url(@brand_subcategory), params: { brand_subcategory: { nama_merk_subkategori: @brand_subcategory.nama_merk_subkategori } }
    assert_redirected_to brand_subcategory_url(@brand_subcategory)
  end

  test "should destroy brand_subcategory" do
    assert_difference("BrandSubcategory.count", -1) do
      delete brand_subcategory_url(@brand_subcategory)
    end

    assert_redirected_to brand_subcategories_url
  end
end
