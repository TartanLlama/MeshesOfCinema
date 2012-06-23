class MiniArticlesController < ApplicationController
  # GET /mini_articles
  # GET /mini_articles.json
  def index
    @mini_articles = MiniArticle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mini_articles }
    end
  end

  # GET /mini_articles/1
  # GET /mini_articles/1.json
  def show
    @mini_article = MiniArticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mini_article }
    end
  end

  # GET /mini_articles/new
  # GET /mini_articles/new.json
  def new
    @mini_article = MiniArticle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mini_article }
    end
  end

  # GET /mini_articles/1/edit
  def edit
    @mini_article = MiniArticle.find(params[:id])
  end

  # POST /mini_articles
  # POST /mini_articles.json
  def create
    @mini_article = MiniArticle.new(params[:mini_article])

    respond_to do |format|
      if @mini_article.save
        format.html { redirect_to @mini_article, notice: 'Mini article was successfully created.' }
        format.json { render json: @mini_article, status: :created, location: @mini_article }
      else
        format.html { render action: "new" }
        format.json { render json: @mini_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mini_articles/1
  # PUT /mini_articles/1.json
  def update
    @mini_article = MiniArticle.find(params[:id])

    respond_to do |format|
      if @mini_article.update_attributes(params[:mini_article])
        format.html { redirect_to @mini_article, notice: 'Mini article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mini_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mini_articles/1
  # DELETE /mini_articles/1.json
  def destroy
    @mini_article = MiniArticle.find(params[:id])
    @mini_article.destroy

    respond_to do |format|
      format.html { redirect_to mini_articles_url }
      format.json { head :no_content }
    end
  end
end
