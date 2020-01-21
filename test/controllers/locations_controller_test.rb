require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get surfcamps" do
    get locations_surfcamps_url
    assert_response :success
  end

end
