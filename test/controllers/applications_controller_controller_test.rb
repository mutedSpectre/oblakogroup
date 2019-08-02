require 'test_helper'

class ApplicationsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get applications_controller_index_url
    assert_response :success
  end

  test "should get update" do
    get applications_controller_update_url
    assert_response :success
  end

  test "should get create" do
    get applications_controller_create_url
    assert_response :success
  end

end
