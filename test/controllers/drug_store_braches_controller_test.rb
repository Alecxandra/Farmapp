require 'test_helper'

class DrugStoreBrachesControllerTest < ActionController::TestCase
  setup do
    @drug_store_brach = drug_store_braches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drug_store_braches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drug_store_brach" do
    assert_difference('DrugStoreBrach.count') do
      post :create, drug_store_brach: { address: @drug_store_brach.address, latitude: @drug_store_brach.latitude, longitude: @drug_store_brach.longitude, name: @drug_store_brach.name }
    end

    assert_redirected_to drug_store_brach_path(assigns(:drug_store_brach))
  end

  test "should show drug_store_brach" do
    get :show, id: @drug_store_brach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drug_store_brach
    assert_response :success
  end

  test "should update drug_store_brach" do
    patch :update, id: @drug_store_brach, drug_store_brach: { address: @drug_store_brach.address, latitude: @drug_store_brach.latitude, longitude: @drug_store_brach.longitude, name: @drug_store_brach.name }
    assert_redirected_to drug_store_brach_path(assigns(:drug_store_brach))
  end

  test "should destroy drug_store_brach" do
    assert_difference('DrugStoreBrach.count', -1) do
      delete :destroy, id: @drug_store_brach
    end

    assert_redirected_to drug_store_braches_path
  end
end
