require 'test_helper'

class ToDoListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @to_do_list = to_do_lists(:one)
  end

  test "should get index" do
    get to_do_lists_url, as: :json
    assert_response :success
  end

  test "should create to_do_list" do
    assert_difference('ToDoList.count') do
      post to_do_lists_url, params: { to_do_list: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show to_do_list" do
    get to_do_list_url(@to_do_list), as: :json
    assert_response :success
  end

  test "should update to_do_list" do
    patch to_do_list_url(@to_do_list), params: { to_do_list: {  } }, as: :json
    assert_response 200
  end

  test "should destroy to_do_list" do
    assert_difference('ToDoList.count', -1) do
      delete to_do_list_url(@to_do_list), as: :json
    end

    assert_response 204
  end
end
