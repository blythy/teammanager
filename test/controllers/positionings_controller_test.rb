require 'test_helper'

class PositioningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @positioning = positionings(:one)
  end

  test "should get index" do
    get positionings_url
    assert_response :success
  end

  test "should get new" do
    get new_positioning_url
    assert_response :success
  end

  test "should create positioning" do
    assert_difference('Positioning.count') do
      post positionings_url, params: { positioning: { player_id: @positioning.player_id, position_id: @positioning.position_id } }
    end

    assert_redirected_to positioning_url(Positioning.last)
  end

  test "should show positioning" do
    get positioning_url(@positioning)
    assert_response :success
  end

  test "should get edit" do
    get edit_positioning_url(@positioning)
    assert_response :success
  end

  test "should update positioning" do
    patch positioning_url(@positioning), params: { positioning: { player_id: @positioning.player_id, position_id: @positioning.position_id } }
    assert_redirected_to positioning_url(@positioning)
  end

  test "should destroy positioning" do
    assert_difference('Positioning.count', -1) do
      delete positioning_url(@positioning)
    end

    assert_redirected_to positionings_url
  end
end
