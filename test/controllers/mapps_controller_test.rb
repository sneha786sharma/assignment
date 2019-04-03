require 'test_helper'

class MappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mapp = mapps(:one)
  end

  test "should get index" do
    get mapps_url
    assert_response :success
  end

  test "should get new" do
    get new_mapp_url
    assert_response :success
  end

  test "should create mapp" do
    assert_difference('Mapp.count') do
      post mapps_url, params: { mapp: { name: @mapp.name, number: @mapp.number } }
    end

    assert_redirected_to mapp_url(Mapp.last)
  end

  test "should show mapp" do
    get mapp_url(@mapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_mapp_url(@mapp)
    assert_response :success
  end

  test "should update mapp" do
    patch mapp_url(@mapp), params: { mapp: { name: @mapp.name, number: @mapp.number } }
    assert_redirected_to mapp_url(@mapp)
  end

  test "should destroy mapp" do
    assert_difference('Mapp.count', -1) do
      delete mapp_url(@mapp)
    end

    assert_redirected_to mapps_url
  end
end
