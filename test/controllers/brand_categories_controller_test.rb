require "test_helper"

class BrandCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand_category = brand_categories(:one)
  end

  test "should get index" do
    get brand_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_category_url
    assert_response :success
  end

  test "should create brand_category" do
    assert_difference("BrandCategory.count") do
      post brand_categories_url, params: { brand_category: { nama_merk_kategori: @brand_category.nama_merk_kategori } }
    end

    assert_redirected_to brand_category_url(BrandCategory.last)
  end

  test "should show brand_category" do
    get brand_category_url(@brand_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_category_url(@brand_category)
    assert_response :success
  end

  test "should update brand_category" do
    patch brand_category_url(@brand_category), params: { brand_category: { nama_merk_kategori: @brand_category.nama_merk_kategori } }
    assert_redirected_to brand_category_url(@brand_category)
  end

  test "should destroy brand_category" do
    assert_difference("BrandCategory.count", -1) do
      delete brand_category_url(@brand_category)
    end

    assert_redirected_to brand_categories_url
  end
end
