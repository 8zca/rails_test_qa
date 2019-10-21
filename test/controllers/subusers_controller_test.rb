require 'test_helper'

class SubusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subuser = subusers(:one)
  end

  test "should get index" do
    get subusers_url
    assert_response :success
  end

  test "should get new" do
    get new_subuser_url
    assert_response :success
  end

  test "should create subuser" do
    assert_difference('Subuser.count') do
      post subusers_url, params: { subuser: { avatar_path: @subuser.avatar_path, name: @subuser.name } }
    end

    assert_redirected_to subuser_url(Subuser.last)
  end

  test "should show subuser" do
    get subuser_url(@subuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_subuser_url(@subuser)
    assert_response :success
  end

  test "should update subuser" do
    patch subuser_url(@subuser), params: { subuser: { avatar_path: @subuser.avatar_path, name: @subuser.name } }
    assert_redirected_to subuser_url(@subuser)
  end

  test "should destroy subuser" do
    assert_difference('Subuser.count', -1) do
      delete subuser_url(@subuser)
    end

    assert_redirected_to subusers_url
  end
end
