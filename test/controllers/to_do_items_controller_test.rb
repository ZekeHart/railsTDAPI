require 'test_helper'

class ToDoItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @to_do_item = to_do_items(:one)
  end

  test "should get index" do
    get to_do_items_url, as: :json
    assert_response :success
  end

  test "should create to_do_item" do
    assert_difference('ToDoItem.count') do
      post to_do_items_url, params: { to_do_item: { completed: @to_do_item.completed, name: @to_do_item.name, toDoList: @to_do_item.toDoList } }, as: :json
    end

    assert_response 201
  end

  test "should show to_do_item" do
    get to_do_item_url(@to_do_item), as: :json
    assert_response :success
  end

  test "should update to_do_item" do
    patch to_do_item_url(@to_do_item), params: { to_do_item: { completed: @to_do_item.completed, name: @to_do_item.name, toDoList: @to_do_item.toDoList } }, as: :json
    assert_response 200
  end

  test "should destroy to_do_item" do
    assert_difference('ToDoItem.count', -1) do
      delete to_do_item_url(@to_do_item), as: :json
    end

    assert_response 204
  end
end
