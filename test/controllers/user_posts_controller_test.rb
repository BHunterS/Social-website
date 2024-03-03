require "test_helper"

class UserPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_post = user_posts(:one)
  end

  test "should get index" do
    get user_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_user_post_url
    assert_response :success
  end

  test "should create user_post" do
    assert_difference("UserPost.count") do
      post user_posts_url, params: { user_post: { media_location: @user_post.media_location, profile_id: @user_post.profile_id, written_text: @user_post.written_text } }
    end

    assert_redirected_to user_post_url(UserPost.last)
  end

  test "should show user_post" do
    get user_post_url(@user_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_post_url(@user_post)
    assert_response :success
  end

  test "should update user_post" do
    patch user_post_url(@user_post), params: { user_post: { media_location: @user_post.media_location, profile_id: @user_post.profile_id, written_text: @user_post.written_text } }
    assert_redirected_to user_post_url(@user_post)
  end

  test "should destroy user_post" do
    assert_difference("UserPost.count", -1) do
      delete user_post_url(@user_post)
    end

    assert_redirected_to user_posts_url
  end
end
