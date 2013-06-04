require 'test_helper'

class AnonymousUserPostsArticleTest < ActionDispatch::IntegrationTest
  test "view a list of articles" do
    Post.create!(title: "First Post!", body: "This is awkward.. I have nothing to say : (")
    Post.create!(title: "Wow, it's been here a while!", body: "This is awkward.. I have nothing to say : (")
    visit '/posts'
    assert_equal 2, Post.count
    assert_include page.body, "All Posts"
    assert_include page.body, "First Post!"
    assert_include page.body, "Wow, it's been here a while!"
  end
end
