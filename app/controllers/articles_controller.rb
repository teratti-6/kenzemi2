class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles1 = Article.where(subject_id:1)
    @articles2 = Article.where(subject_id:2)
    @articles3 = Article.where(subject_id:3)
    @articles4 = Article.where(subject_id:4)
    @articles5 = Article.where(subject_id:5)
    @articles6 = Article.where(subject_id:6)
    
    @subjects1 = Subject.find(1)
    @subjects2 = Subject.find(2)
    @subjects3 = Subject.find(3)
    @subjects4 = Subject.find(4)
    @subjects5 = Subject.find(5)
    @subjects6 = Subject.find(6)
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    begin
      @next = @article.next
    rescue
      @next = nil
    end
    begin
      @prev = @article.previous
    rescue
      @prev = nil
    end
  end



  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params) && @article.video.recreate_versions!
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :video)
    end
end
