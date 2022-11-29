require 'test_helper'

class RedbusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @redbus = redbuses(:one)
  end

  test "should get index" do
    get redbuses_url
    assert_response :success
  end

  test "should get new" do
    get new_redbus_url
    assert_response :success
  end

  test "should create redbus" do
    assert_difference('Redbus.count') do
      post redbuses_url, params: { redbus: { account: @redbus.account, name: @redbus.name, offers: @redbus.offers } }
    end

    assert_redirected_to redbus_url(Redbus.last)
  end

  test "should show redbus" do
    get redbus_url(@redbus)
    assert_response :success
  end

  test "should get edit" do
    get edit_redbus_url(@redbus)
    assert_response :success
  end

  test "should update redbus" do
    patch redbus_url(@redbus), params: { redbus: { account: @redbus.account, name: @redbus.name, offers: @redbus.offers } }
    assert_redirected_to redbus_url(@redbus)
  end

  test "should destroy redbus" do
    assert_difference('Redbus.count', -1) do
      delete redbus_url(@redbus)
    end

    assert_redirected_to redbuses_url
  end
end
