require 'test_helper'

class TiTlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ti_tle = ti_tles(:one)
  end

  test "should get index" do
    get ti_tles_url
    assert_response :success
  end

  test "should get new" do
    get new_ti_tle_url
    assert_response :success
  end

  test "should create ti_tle" do
    assert_difference('TiTle.count') do
      post ti_tles_url, params: { ti_tle: { message: @ti_tle.message, title: @ti_tle.title } }
    end

    assert_redirected_to ti_tle_url(TiTle.last)
  end

  test "should show ti_tle" do
    get ti_tle_url(@ti_tle)
    assert_response :success
  end

  test "should get edit" do
    get edit_ti_tle_url(@ti_tle)
    assert_response :success
  end

  test "should update ti_tle" do
    patch ti_tle_url(@ti_tle), params: { ti_tle: { message: @ti_tle.message, title: @ti_tle.title } }
    assert_redirected_to ti_tle_url(@ti_tle)
  end

  test "should destroy ti_tle" do
    assert_difference('TiTle.count', -1) do
      delete ti_tle_url(@ti_tle)
    end

    assert_redirected_to ti_tles_url
  end
end
