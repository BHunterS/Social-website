require "application_system_test_case"

class PostReactionsTest < ApplicationSystemTestCase
  setup do
    @post_reaction = post_reactions(:one)
  end

  test "visiting the index" do
    visit post_reactions_url
    assert_selector "h1", text: "Post reactions"
  end

  test "should create post reaction" do
    visit post_reactions_url
    click_on "New post reaction"

    fill_in "Post", with: @post_reaction.post_id
    fill_in "Profile", with: @post_reaction.profile_id
    fill_in "Reaction", with: @post_reaction.reaction_id
    click_on "Create Post reaction"

    assert_text "Post reaction was successfully created"
    click_on "Back"
  end

  test "should update Post reaction" do
    visit post_reaction_url(@post_reaction)
    click_on "Edit this post reaction", match: :first

    fill_in "Post", with: @post_reaction.post_id
    fill_in "Profile", with: @post_reaction.profile_id
    fill_in "Reaction", with: @post_reaction.reaction_id
    click_on "Update Post reaction"

    assert_text "Post reaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Post reaction" do
    visit post_reaction_url(@post_reaction)
    click_on "Destroy this post reaction", match: :first

    assert_text "Post reaction was successfully destroyed"
  end
end
