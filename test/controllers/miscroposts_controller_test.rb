require 'test_helper'

class MiscropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @miscropost = miscroposts(:one)
  end

  test "should get index" do
    get miscroposts_url
    assert_response :success
  end

  test "should get new" do
    get new_miscropost_url
    assert_response :success
  end

  test "should create miscropost" do
    assert_difference('Miscropost.count') do
      post miscroposts_url, params: { miscropost: { context: @miscropost.context, user_id: @miscropost.user_id } }
    end

    assert_redirected_to miscropost_url(Miscropost.last)
  end

  test "should show miscropost" do
    get miscropost_url(@miscropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_miscropost_url(@miscropost)
    assert_response :success
  end

  test "should update miscropost" do
    patch miscropost_url(@miscropost), params: { miscropost: { context: @miscropost.context, user_id: @miscropost.user_id } }
    assert_redirected_to miscropost_url(@miscropost)
  end

  test "should destroy miscropost" do
    assert_difference('Miscropost.count', -1) do
      delete miscropost_url(@miscropost)
    end

    assert_redirected_to miscroposts_url
  end
end
