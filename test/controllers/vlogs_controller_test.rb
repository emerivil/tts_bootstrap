require 'test_helper'

class VlogsControllerTest < ActionController::TestCase
  setup do
    @vlog = vlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vlog" do
    assert_difference('Vlog.count') do
      post :create, vlog: { description: @vlog.description, name: @vlog.name, year_founded: @vlog.year_founded }
    end

    assert_redirected_to vlog_path(assigns(:vlog))
  end

  test "should show vlog" do
    get :show, id: @vlog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vlog
    assert_response :success
  end

  test "should update vlog" do
    patch :update, id: @vlog, vlog: { description: @vlog.description, name: @vlog.name, year_founded: @vlog.year_founded }
    assert_redirected_to vlog_path(assigns(:vlog))
  end

  test "should destroy vlog" do
    assert_difference('Vlog.count', -1) do
      delete :destroy, id: @vlog
    end

    assert_redirected_to vlogs_path
  end
end
