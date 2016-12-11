require 'test_helper'

class CashmeoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashmeout = cashmeouts(:one)
  end

  test "should get index" do
    get cashmeouts_url
    assert_response :success
  end

  test "should get new" do
    get new_cashmeout_url
    assert_response :success
  end

  test "should create cashmeout" do
    assert_difference('Cashmeout.count') do
      post cashmeouts_url, params: { cashmeout: { date: @cashmeout.date, del_charge: @cashmeout.del_charge, drop: @cashmeout.drop, extra: @cashmeout.extra, name: @cashmeout.name, sub_total: @cashmeout.sub_total, toget: @cashmeout.toget, total_delivery: @cashmeout.total_delivery } }
    end

    assert_redirected_to cashmeout_url(Cashmeout.last)
  end

  test "should show cashmeout" do
    get cashmeout_url(@cashmeout)
    assert_response :success
  end

  test "should get edit" do
    get edit_cashmeout_url(@cashmeout)
    assert_response :success
  end

  test "should update cashmeout" do
    patch cashmeout_url(@cashmeout), params: { cashmeout: { date: @cashmeout.date, del_charge: @cashmeout.del_charge, drop: @cashmeout.drop, extra: @cashmeout.extra, name: @cashmeout.name, sub_total: @cashmeout.sub_total, toget: @cashmeout.toget, total_delivery: @cashmeout.total_delivery } }
    assert_redirected_to cashmeout_url(@cashmeout)
  end

  test "should destroy cashmeout" do
    assert_difference('Cashmeout.count', -1) do
      delete cashmeout_url(@cashmeout)
    end

    assert_redirected_to cashmeouts_url
  end
end
