require 'test_helper'

class MiniReviewsControllerTest < ActionController::TestCase
  setup do
    @mini_review = mini_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mini_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mini_review" do
    assert_difference('MiniReview.count') do
      post :create, mini_review: { content: @mini_review.content, decade: @mini_review.decade, title: @mini_review.title, year: @mini_review.year }
    end

    assert_redirected_to mini_review_path(assigns(:mini_review))
  end

  test "should show mini_review" do
    get :show, id: @mini_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mini_review
    assert_response :success
  end

  test "should update mini_review" do
    put :update, id: @mini_review, mini_review: { content: @mini_review.content, decade: @mini_review.decade, title: @mini_review.title, year: @mini_review.year }
    assert_redirected_to mini_review_path(assigns(:mini_review))
  end

  test "should destroy mini_review" do
    assert_difference('MiniReview.count', -1) do
      delete :destroy, id: @mini_review
    end

    assert_redirected_to mini_reviews_path
  end
end
