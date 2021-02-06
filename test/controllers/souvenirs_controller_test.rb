require 'test_helper'

class SouvenirsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get souvenirs_index_url
    assert_response :success
  end

  test "should get new" do
    get souvenirs_new_url
    assert_response :success
  end

  test "should get show" do
    get souvenirs_show_url
    assert_response :success
  end

end
