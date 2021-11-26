require 'test_helper'

class FilepicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filepic = filepics(:one)
  end

  test "should get index" do
    get filepics_url, as: :json
    assert_response :success
  end

  test "should create filepic" do
    assert_difference('Filepic.count') do
      post filepics_url, params: { filepic: { devicetype: @filepic.devicetype, geolocation: @filepic.geolocation, name: @filepic.name, picture: @filepic.picture } }, as: :json
    end

    assert_response 201
  end

  test "should show filepic" do
    get filepic_url(@filepic), as: :json
    assert_response :success
  end

  test "should update filepic" do
    patch filepic_url(@filepic), params: { filepic: { devicetype: @filepic.devicetype, geolocation: @filepic.geolocation, name: @filepic.name, picture: @filepic.picture } }, as: :json
    assert_response 200
  end

  test "should destroy filepic" do
    assert_difference('Filepic.count', -1) do
      delete filepic_url(@filepic), as: :json
    end

    assert_response 204
  end
end
