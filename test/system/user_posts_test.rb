require "application_system_test_case"

class UserPostsTest < ApplicationSystemTestCase
  setup do
    @user_post = user_posts(:one)
  end

  test "visiting the index" do
    visit user_posts_url
    assert_selector "h1", text: "User posts"
  end

  test "should create user post" do
    visit user_posts_url
    click_on "New user post"

    fill_in "Media location", with: @user_post.media_location
    fill_in "Profile", with: @user_post.profile_id
    fill_in "Written text", with: @user_post.written_text
    click_on "Create User post"

    assert_text "User post was successfully created"
    click_on "Back"
  end

  test "should update User post" do
    visit user_post_url(@user_post)
    click_on "Edit this user post", match: :first

    fill_in "Media location", with: @user_post.media_location
    fill_in "Profile", with: @user_post.profile_id
    fill_in "Written text", with: @user_post.written_text
    click_on "Update User post"

    assert_text "User post was successfully updated"
    click_on "Back"
  end

  test "should destroy User post" do
    visit user_post_url(@user_post)
    click_on "Destroy this user post", match: :first

    assert_text "User post was successfully destroyed"
  end
end
