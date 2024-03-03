require "application_system_test_case"

class FriendshipsTest < ApplicationSystemTestCase
  setup do
    @friendship = friendships(:one)
  end

  test "visiting the index" do
    visit friendships_url
    assert_selector "h1", text: "Friendships"
  end

  test "should create friendship" do
    visit friendships_url
    click_on "New friendship"

    fill_in "Profile accept", with: @friendship.profile_accept
    fill_in "Profile request", with: @friendship.profile_request
    click_on "Create Friendship"

    assert_text "Friendship was successfully created"
    click_on "Back"
  end

  test "should update Friendship" do
    visit friendship_url(@friendship)
    click_on "Edit this friendship", match: :first

    fill_in "Profile accept", with: @friendship.profile_accept
    fill_in "Profile request", with: @friendship.profile_request
    click_on "Update Friendship"

    assert_text "Friendship was successfully updated"
    click_on "Back"
  end

  test "should destroy Friendship" do
    visit friendship_url(@friendship)
    click_on "Destroy this friendship", match: :first

    assert_text "Friendship was successfully destroyed"
  end
end
