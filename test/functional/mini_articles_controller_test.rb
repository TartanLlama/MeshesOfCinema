require 'test_helper'

class MiniArticlesControllerTest < ActionController::TestCase
  setup do
    @mini_article = mini_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mini_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mini_article" do
    assert_difference('MiniArticle.count') do
      post :create, mini_article: { name: @mini_article.name }
    end

    assert_redirected_to mini_article_path(assigns(:mini_article))
  end

  test "should show mini_article" do
    get :show, id: @mini_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mini_article
    assert_response :success
  end

  test "should update mini_article" do
    put :update, id: @mini_article, mini_article: { name: @mini_article.name }
    assert_redirected_to mini_article_path(assigns(:mini_article))
  end

  test "should destroy mini_article" do
    assert_difference('MiniArticle.count', -1) do
      delete :destroy, id: @mini_article
    end

    assert_redirected_to mini_articles_path
  end
end
