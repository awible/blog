require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "article_name_fails_with_4_characters" do
    a = Article.new(:title => "test")
    assert (!a.valid?)
  end

  test "article_name_succeeds_with_5_characters" do
    a = Article.new(:title => "test1")
    assert (a.valid?)
  end

end
