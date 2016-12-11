require 'test_helper'

class DriverslistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driverslist = driverslists(:one)
  end

  test "should get index" do
    get driverslists_url
    assert_response :success
  end

  test "should get new" do
    get new_driverslist_url
    assert_response :success
  end

  test "should create driverslist" do
    assert_difference('Driverslist.count') do
      post driverslists_url, params: { driverslist: { name: @driverslist.name } }
    end

    assert_redirected_to driverslist_url(Driverslist.last)
  end

  test "should show driverslist" do
    get driverslist_url(@driverslist)
    assert_response :success
  end

  test "should get edit" do
    get edit_driverslist_url(@driverslist)
    assert_response :success
  end

  test "should update driverslist" do
    patch driverslist_url(@driverslist), params: { driverslist: { name: @driverslist.name } }
    assert_redirected_to driverslist_url(@driverslist)
  end

  test "should destroy driverslist" do
    assert_difference('Driverslist.count', -1) do
      delete driverslist_url(@driverslist)
    end

    assert_redirected_to driverslists_url
  end
end
