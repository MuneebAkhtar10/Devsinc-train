require 'test_helper'

class NewsfeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newsfeed = newsfeeds(:one)
  end

  test "should get index" do
    get newsfeeds_url
    assert_response :success
  end

  test "should get new" do
    get new_newsfeed_url
    assert_response :success
  end

  test "should create newsfeed" do
    assert_difference('Newsfeed.count') do
      post newsfeeds_url, params: { newsfeed: { body: @newsfeed.body, title: @newsfeed.title, user_id: @newsfeed.user_id } }
    end

    assert_redirected_to newsfeed_url(Newsfeed.last)
  end

  test "should show newsfeed" do
    get newsfeed_url(@newsfeed)
    assert_response :success
  end

  test "should get edit" do
    get edit_newsfeed_url(@newsfeed)
    assert_response :success
  end

  test "should update newsfeed" do
    patch newsfeed_url(@newsfeed), params: { newsfeed: { body: @newsfeed.body, title: @newsfeed.title, user_id: @newsfeed.user_id } }
    assert_redirected_to newsfeed_url(@newsfeed)
  end

  test "should destroy newsfeed" do
    assert_difference('Newsfeed.count', -1) do
      delete newsfeed_url(@newsfeed)
    end

    assert_redirected_to newsfeeds_url
  end
end
