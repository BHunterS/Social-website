require "test_helper"

class PostReactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_reaction = post_reactions(:one)
  end

  test "should get index" do
    get post_reactions_url
    assert_response :success
  end

  test "should get new" do
    get new_post_reaction_url
    assert_response :success
  end

  test "should create post_reaction" do
    assert_difference("PostReaction.count") do
      post post_reactions_url, params: { post_reaction: { post_id: @post_reaction.post_id, profile_id: @post_reaction.profile_id, reaction_id: @post_reaction.reaction_id } }
    end

    assert_redirected_to post_reaction_url(PostReaction.last)
  end

  test "should show post_reaction" do
    get post_reaction_url(@post_reaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_reaction_url(@post_reaction)
    assert_response :success
  end

  test "should update post_reaction" do
    patch post_reaction_url(@post_reaction), params: { post_reaction: { post_id: @post_reaction.post_id, profile_id: @post_reaction.profile_id, reaction_id: @post_reaction.reaction_id } }
    assert_redirected_to post_reaction_url(@post_reaction)
  end

  test "should destroy post_reaction" do
    assert_difference("PostReaction.count", -1) do
      delete post_reaction_url(@post_reaction)
    end

    assert_redirected_to post_reactions_url
  end
end
