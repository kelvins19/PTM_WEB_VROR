require "test_helper"

class RaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rak = raks(:one)
  end

  test "should get index" do
    get raks_url
    assert_response :success
  end

  test "should get new" do
    get new_rak_url
    assert_response :success
  end

  test "should create rak" do
    assert_difference("Rak.count") do
      post raks_url, params: { rak: { nama_rak: @rak.nama_rak, string: @rak.string } }
    end

    assert_redirected_to rak_url(Rak.last)
  end

  test "should show rak" do
    get rak_url(@rak)
    assert_response :success
  end

  test "should get edit" do
    get edit_rak_url(@rak)
    assert_response :success
  end

  test "should update rak" do
    patch rak_url(@rak), params: { rak: { nama_rak: @rak.nama_rak, string: @rak.string } }
    assert_redirected_to rak_url(@rak)
  end

  test "should destroy rak" do
    assert_difference("Rak.count", -1) do
      delete rak_url(@rak)
    end

    assert_redirected_to raks_url
  end
end
