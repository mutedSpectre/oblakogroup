require 'test_helper'

class TodosControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get todos_controller_index_url
    assert_response :success
  end

  test "should get create" do
    get todos_controller_create_url
    assert_response :success
  end

  test "should get update" do
    get todos_controller_update_url
    assert_response :success
  end

end
