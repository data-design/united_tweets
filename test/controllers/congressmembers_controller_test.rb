require 'test_helper'

class CongressmembersControllerTest < ActionController::TestCase
  setup do
    @congressmember = congressmembers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congressmembers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congressmember" do
    assert_difference('Congressmember.count') do
      post :create, congressmember: { first_name: @congressmember.first_name, last_name: @congressmember.last_name, party: @congressmember.party, state: @congressmember.state }
    end

    assert_redirected_to congressmember_path(assigns(:congressmember))
  end

  test "should show congressmember" do
    get :show, id: @congressmember
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @congressmember
    assert_response :success
  end

  test "should update congressmember" do
    patch :update, id: @congressmember, congressmember: { first_name: @congressmember.first_name, last_name: @congressmember.last_name, party: @congressmember.party, state: @congressmember.state }
    assert_redirected_to congressmember_path(assigns(:congressmember))
  end

  test "should destroy congressmember" do
    assert_difference('Congressmember.count', -1) do
      delete :destroy, id: @congressmember
    end

    assert_redirected_to congressmembers_path
  end
end
