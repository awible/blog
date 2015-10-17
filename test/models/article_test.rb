require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "article_name_fails_with_4_characters" do
    a = Article.new
    assert (!a.valid?)
    a.title = "test"
    assert (!a.valid?)
  end

  test "article_name_succeeds_with_5_characters" do
    a = Article.new(:title => "test1")
    assert (a.valid?)
  end

  test "article_gets_destroyed" do
    a = Article.new(:title => "test1")
    a.comments << Comment.new(:commenter => "Adrian", :body => "Adrian, you are brilliant!")
    a.save
    a.destroy
    assert (a.destroyed?)
  end

  test "comments_get_destroyed_when_parent_destroyed" do
    a = Article.new(:title => "test1")
    a.comments << Comment.new(:commenter => "Adrian", :body => "Adrian, you are brilliant!")
    a.comments << Comment.new(:commenter => "Adrian", :body => "Adrian, you are really brilliant!")
    a.save
    assert (a.comments.size == 2)
    a.destroy
    assert (a.comments.size == 0)
  end

end
