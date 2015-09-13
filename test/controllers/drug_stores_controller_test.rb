require 'test_helper'

class DrugStoresControllerTest < ActionController::TestCase
  setup do
    @drug_store = drug_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drug_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drug_store" do
    assert_difference('DrugStore.count') do
      post :create, drug_store: { email: @drug_store.email, logo_img_url: @drug_store.logo_img_url, name: @drug_store.name, web_page_url: @drug_store.web_page_url }
    end

    assert_redirected_to drug_store_path(assigns(:drug_store))
  end

  test "should show drug_store" do
    get :show, id: @drug_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drug_store
    assert_response :success
  end

  test "should update drug_store" do
    patch :update, id: @drug_store, drug_store: { email: @drug_store.email, logo_img_url: @drug_store.logo_img_url, name: @drug_store.name, web_page_url: @drug_store.web_page_url }
    assert_redirected_to drug_store_path(assigns(:drug_store))
  end

  test "should destroy drug_store" do
    assert_difference('DrugStore.count', -1) do
      delete :destroy, id: @drug_store
    end

    assert_redirected_to drug_stores_path
  end
end
