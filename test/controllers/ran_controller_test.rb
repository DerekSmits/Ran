require "test_helper"

class RanControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ran_new_url
    assert_response :success
  end
end
