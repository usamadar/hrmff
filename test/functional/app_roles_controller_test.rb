require 'test_helper'

class AppRolesControllerTest < ActionController::TestCase
  setup do
    @app_role = app_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_role" do
    assert_difference('AppRole.count') do
      post :create, app_role: { code: @app_role.code, description: @app_role.description }
    end

    assert_redirected_to app_role_path(assigns(:app_role))
  end

  test "should show app_role" do
    get :show, id: @app_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_role
    assert_response :success
  end

  test "should update app_role" do
    put :update, id: @app_role, app_role: { code: @app_role.code, description: @app_role.description }
    assert_redirected_to app_role_path(assigns(:app_role))
  end

  test "should destroy app_role" do
    assert_difference('AppRole.count', -1) do
      delete :destroy, id: @app_role
    end

    assert_redirected_to app_roles_path
  end
end
