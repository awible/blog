require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

#  test "should show article" do
#    get :article
#    assert_response :success
#    assert_redirected_to(controller: "ArticlesController", action: "show)
#  end

  test "should_create_article" do
    assert (post :create, article: {title: "Long Enough", text: "Wisdom"})
    # assert_redirect_to article_path(assigns(:article))    
  end
end
