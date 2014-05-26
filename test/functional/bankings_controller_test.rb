require 'test_helper'

class BankingsControllerTest < ActionController::TestCase
  setup do
    @banking = bankings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bankings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banking" do
    assert_difference('Banking.count') do
      post :create, banking: { account_no: @banking.account_no, address1: @banking.address1, address2: @banking.address2, city: @banking.city, country: @banking.country, name: @banking.name, state: @banking.state, zip_code: @banking.zip_code }
    end

    assert_redirected_to banking_path(assigns(:banking))
  end

  test "should show banking" do
    get :show, id: @banking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banking
    assert_response :success
  end

  test "should update banking" do
    put :update, id: @banking, banking: { account_no: @banking.account_no, address1: @banking.address1, address2: @banking.address2, city: @banking.city, country: @banking.country, name: @banking.name, state: @banking.state, zip_code: @banking.zip_code }
    assert_redirected_to banking_path(assigns(:banking))
  end

  test "should destroy banking" do
    assert_difference('Banking.count', -1) do
      delete :destroy, id: @banking
    end

    assert_redirected_to bankings_path
  end
end
