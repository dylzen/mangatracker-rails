require "test_helper"

class VolumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volume = volumes(:one)
  end

  test "should get index" do
    get volumes_url
    assert_response :success
  end

  test "should get new" do
    get new_volume_url
    assert_response :success
  end

  test "should create volume" do
    assert_difference("Volume.count") do
      post volumes_url, params: { volume: { manga_id: @volume.manga_id, number: @volume.number, price: @volume.price, rel_date: @volume.rel_date } }
    end

    assert_redirected_to volume_url(Volume.last)
  end

  test "should show volume" do
    get volume_url(@volume)
    assert_response :success
  end

  test "should get edit" do
    get edit_volume_url(@volume)
    assert_response :success
  end

  test "should update volume" do
    patch volume_url(@volume), params: { volume: { manga_id: @volume.manga_id, number: @volume.number, price: @volume.price, rel_date: @volume.rel_date } }
    assert_redirected_to volume_url(@volume)
  end

  test "should destroy volume" do
    assert_difference("Volume.count", -1) do
      delete volume_url(@volume)
    end

    assert_redirected_to volumes_url
  end
end
