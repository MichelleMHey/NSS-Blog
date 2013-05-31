require 'test_helper'

class AnonymousUserPostsArticleTest < ActionDispatch::IntegrationTest
  test "view a list of articles" do
    Post.create!(title: "First Post!", body: "This is awkward.. I have nothing to say : (")
    Post.create!(title: "Wow, it's been here a while!", body: "This is awkward.. I have nothing to say : (")

    visit '/'
    click_link "View All Posts"
    assert_current_path '/posts'
    assert_include page.content, "First Post!"
    assert_include page.content, "Wow, it's been here a while!"
  end
end
