require 'test_helper'

class TracesControllerTest < ActionController::TestCase
  setup do
    @trace = traces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trace" do
    assert_difference('Trace.count') do
      post :create, trace: { data: @trace.data }
    end

    assert_redirected_to trace_path(assigns(:trace))
  end

  test "should show trace" do
    get :show, id: @trace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trace
    assert_response :success
  end

  test "should update trace" do
    patch :update, id: @trace, trace: { data: @trace.data }
    assert_redirected_to trace_path(assigns(:trace))
  end

  test "should destroy trace" do
    assert_difference('Trace.count', -1) do
      delete :destroy, id: @trace
    end

    assert_redirected_to traces_path
  end
end
