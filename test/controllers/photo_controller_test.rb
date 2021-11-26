require 'test_helper'

class PhotoControllerTest < ActionDispatch::IntegrationTest
  test "should get upload" do
    get photo_upload_url
    assert_response :success
  end

end
