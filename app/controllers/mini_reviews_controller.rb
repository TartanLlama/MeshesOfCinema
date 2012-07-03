class MiniReviewsController < ApplicationController
  before_filter :authenticate_admin!, except: [:index, :show]

  # GET /mini_reviews
  # GET /mini_reviews.json
  def index
    @mini_reviews = MiniReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mini_reviews }
    end
  end

  # GET /mini_reviews/1
  # GET /mini_reviews/1.json
  def show
    @mini_review = MiniReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mini_review }
    end
  end

  # GET /mini_reviews/new
  # GET /mini_reviews/new.json
  def new
    @film = Film.new
    @mini_review = MiniReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mini_review }
    end
  end

  # GET /mini_reviews/1/edit
  def edit
    @mini_review = MiniReview.find(params[:id])
  end

  # POST /mini_reviews
  # POST /mini_reviews.json
  def create
    @mini_review = MiniReview.new(params[:mini_review])

    respond_to do |format|
      if @mini_review.save
        format.html { redirect_to @mini_review, notice: 'Mini review was successfully created.' }
        format.json { render json: @mini_review, status: :created, location: @mini_review }
      else
        format.html { render action: "new" }
        format.json { render json: @mini_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mini_reviews/1
  # PUT /mini_reviews/1.json
  def update
    @mini_review = MiniReview.find(params[:id])

    respond_to do |format|
      if @mini_review.update_attributes(params[:mini_review])
        format.html { redirect_to @mini_review, notice: 'Mini review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mini_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mini_reviews/1
  # DELETE /mini_reviews/1.json
  def destroy
    @mini_review = MiniReview.find(params[:id])
    @mini_review.destroy

    respond_to do |format|
      format.html { redirect_to mini_reviews_url }
      format.json { head :no_content }
    end
  end
end
