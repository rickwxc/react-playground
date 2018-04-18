require 'test_helper'

class Star2mineralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @star2mineral = star2minerals(:one)
  end

  test "should get index" do
    get star2minerals_url
    assert_response :success
  end

  test "should get new" do
    get new_star2mineral_url
    assert_response :success
  end

  test "should create star2mineral" do
    assert_difference('Star2mineral.count') do
      post star2minerals_url, params: { star2mineral: { loc_id: @star2mineral.loc_id, max_qty: @star2mineral.max_qty, mineral_id: @star2mineral.mineral_id, star_id: @star2mineral.star_id } }
    end

    assert_redirected_to star2mineral_url(Star2mineral.last)
  end

  test "should show star2mineral" do
    get star2mineral_url(@star2mineral)
    assert_response :success
  end

  test "should get edit" do
    get edit_star2mineral_url(@star2mineral)
    assert_response :success
  end

  test "should update star2mineral" do
    patch star2mineral_url(@star2mineral), params: { star2mineral: { loc_id: @star2mineral.loc_id, max_qty: @star2mineral.max_qty, mineral_id: @star2mineral.mineral_id, star_id: @star2mineral.star_id } }
    assert_redirected_to star2mineral_url(@star2mineral)
  end

  test "should destroy star2mineral" do
    assert_difference('Star2mineral.count', -1) do
      delete star2mineral_url(@star2mineral)
    end

    assert_redirected_to star2minerals_url
  end
end
