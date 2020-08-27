require 'test_helper'

class Api::V1::LogFoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_log_foods_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_log_foods_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_log_foods_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_log_foods_destroy_url
    assert_response :success
  end

end
