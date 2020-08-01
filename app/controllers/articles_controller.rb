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
    @subjects7 = Subject.find(7)
    @subjects8 = Subject.find(8)
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @subjects1 = Subject.find(1)
    @subjects2 = Subject.find(2)
    @subjects3 = Subject.find(3)
    @subjects4 = Subject.find(4)
    @subjects5 = Subject.find(5)
    @subjects6 = Subject.find(6)
    @subjects7 = Subject.find(7)
    @subjects8 = Subject.find(8)

    @sub1lesson1 = Article.where(subject_id:1 , lesson_id:1)
    @sub1lesson2 = Article.where(subject_id:1 , lesson_id:2)
    @sub1lesson3 = Article.where(subject_id:1 , lesson_id:3)
    @sub1lesson4 = Article.where(subject_id:1 , lesson_id:4)
    @sub1lesson5 = Article.where(subject_id:1 , lesson_id:5)
    @sub1lesson6 = Article.where(subject_id:1 , lesson_id:6)
    @sub1lesson7 = Article.where(subject_id:1 , lesson_id:7)
    @sub1lesson8 = Article.where(subject_id:1 , lesson_id:8)
    @sub1lesson9 = Article.where(subject_id:1 , lesson_id:9)
    @sub1lesson10 = Article.where(subject_id:1 , lesson_id:10)
    @sub2lesson1 = Article.where(subject_id:2 , lesson_id:1)
    @sub2lesson2 = Article.where(subject_id:2 , lesson_id:2)
    @sub2lesson3 = Article.where(subject_id:2 , lesson_id:3)
    @sub2lesson4 = Article.where(subject_id:2 , lesson_id:4)
    @sub2lesson5 = Article.where(subject_id:2 , lesson_id:5)
    @sub2lesson6 = Article.where(subject_id:2 , lesson_id:6)
    @sub2lesson7 = Article.where(subject_id:2 , lesson_id:7)
    @sub2lesson8 = Article.where(subject_id:2 , lesson_id:8)
    @sub2lesson9 = Article.where(subject_id:2 , lesson_id:9)
    @sub2lesson10 = Article.where(subject_id:2 , lesson_id:10)
    @sub3lesson1 = Article.where(subject_id:3 , lesson_id:1)
    @sub3lesson2 = Article.where(subject_id:3 , lesson_id:2)
    @sub3lesson3 = Article.where(subject_id:3 , lesson_id:3)
    @sub3lesson4 = Article.where(subject_id:3 , lesson_id:4)
    @sub3lesson5 = Article.where(subject_id:3 , lesson_id:5)
    @sub3lesson6 = Article.where(subject_id:3 , lesson_id:6)
    @sub3lesson7 = Article.where(subject_id:3 , lesson_id:7)
    @sub3lesson8 = Article.where(subject_id:3 , lesson_id:8)
    @sub3lesson9 = Article.where(subject_id:3 , lesson_id:9)
    @sub3lesson10 = Article.where(subject_id:3 , lesson_id:10)
    @sub4lesson1 = Article.where(subject_id:4 , lesson_id:1)
    @sub4lesson2 = Article.where(subject_id:4 , lesson_id:2)
    @sub4lesson3 = Article.where(subject_id:4 , lesson_id:3)
    @sub4lesson4 = Article.where(subject_id:4 , lesson_id:4)
    @sub4lesson5 = Article.where(subject_id:4 , lesson_id:5)
    @sub4lesson6 = Article.where(subject_id:4 , lesson_id:6)
    @sub4lesson7 = Article.where(subject_id:4 , lesson_id:7)
    @sub4lesson8 = Article.where(subject_id:4 , lesson_id:8)
    @sub4lesson9 = Article.where(subject_id:4 , lesson_id:9)
    @sub4lesson10 = Article.where(subject_id:4 , lesson_id:10)
    @sub5lesson1 = Article.where(subject_id:5 , lesson_id:1)
    @sub5lesson2 = Article.where(subject_id:5 , lesson_id:2)
    @sub5lesson3 = Article.where(subject_id:5 , lesson_id:3)
    @sub5lesson4 = Article.where(subject_id:5 , lesson_id:4)
    @sub5lesson5 = Article.where(subject_id:5 , lesson_id:5)
    @sub5lesson6 = Article.where(subject_id:5 , lesson_id:6)
    @sub5lesson7 = Article.where(subject_id:5 , lesson_id:7)
    @sub5lesson8 = Article.where(subject_id:5 , lesson_id:8)
    @sub5lesson9 = Article.where(subject_id:5 , lesson_id:9)
    @sub5lesson10 = Article.where(subject_id:5 , lesson_id:10)
    @sub6lesson1 = Article.where(subject_id:6 , lesson_id:1)
    @sub6lesson2 = Article.where(subject_id:6 , lesson_id:2)
    @sub6lesson3 = Article.where(subject_id:6 , lesson_id:3)
    @sub6lesson4 = Article.where(subject_id:6 , lesson_id:4)
    @sub6lesson5 = Article.where(subject_id:6 , lesson_id:5)
    @sub6lesson6 = Article.where(subject_id:6 , lesson_id:6)
    @sub6lesson7 = Article.where(subject_id:6 , lesson_id:7)
    @sub6lesson8 = Article.where(subject_id:6 , lesson_id:8)
    @sub6lesson9 = Article.where(subject_id:6 , lesson_id:9)
    @sub6lesson10 = Article.where(subject_id:6 , lesson_id:10)
    @sub7lesson1 = Article.where(subject_id:7 , lesson_id:1)
    @sub7lesson2 = Article.where(subject_id:7 , lesson_id:2)
    @sub7lesson3 = Article.where(subject_id:7 , lesson_id:3)
    @sub7lesson4 = Article.where(subject_id:7 , lesson_id:4)
    @sub7lesson5 = Article.where(subject_id:7 , lesson_id:5)
    @sub7lesson6 = Article.where(subject_id:7 , lesson_id:6)
    @sub7lesson7 = Article.where(subject_id:7 , lesson_id:7)
    @sub7lesson8 = Article.where(subject_id:7 , lesson_id:8)
    @sub7lesson9 = Article.where(subject_id:7 , lesson_id:9)
    @sub7lesson10 = Article.where(subject_id:7 , lesson_id:10)
    @sub8lesson1 = Article.where(subject_id:8 , lesson_id:1)
    @sub8lesson2 = Article.where(subject_id:8 , lesson_id:2)
    @sub8lesson3 = Article.where(subject_id:8 , lesson_id:3)
    @sub8lesson4 = Article.where(subject_id:8 , lesson_id:4)
    @sub8lesson5 = Article.where(subject_id:8 , lesson_id:5)
    @sub8lesson6 = Article.where(subject_id:8 , lesson_id:6)
    @sub8lesson7 = Article.where(subject_id:8 , lesson_id:7)
    @sub8lesson8 = Article.where(subject_id:8 , lesson_id:8)
    @sub8lesson9 = Article.where(subject_id:8 , lesson_id:9)
    @sub8lesson10 = Article.where(subject_id:8 , lesson_id:10)

    @img1les1 = Image.where(subject_id:1 , lesson_id:1)
    @img1les2 = Image.where(subject_id:1 , lesson_id:2)
    @img1les3 = Image.where(subject_id:1 , lesson_id:3)
    @img1les4 = Image.where(subject_id:1 , lesson_id:4)
    @img1les5 = Image.where(subject_id:1 , lesson_id:5)
    @img1les6 = Image.where(subject_id:1 , lesson_id:6)
    @img1les7 = Image.where(subject_id:1 , lesson_id:7)
    @img1les8 = Image.where(subject_id:1 , lesson_id:8)
    @img1les9 = Image.where(subject_id:1 , lesson_id:9)
    @img1les10 = Image.where(subject_id:1 , lesson_id:10)
    @img2les1 = Image.where(subject_id:2 , lesson_id:1)
    @img2les2 = Image.where(subject_id:2 , lesson_id:2)
    @img2les3 = Image.where(subject_id:2 , lesson_id:3)
    @img2les4 = Image.where(subject_id:2 , lesson_id:4)
    @img2les5 = Image.where(subject_id:2 , lesson_id:5)
    @img2les6 = Image.where(subject_id:2 , lesson_id:6)
    @img2les7 = Image.where(subject_id:2 , lesson_id:7)
    @img2les8 = Image.where(subject_id:2 , lesson_id:8)
    @img2les9 = Image.where(subject_id:2 , lesson_id:9)
    @img2les10 = Image.where(subject_id:2 , lesson_id:10)
    @img3les1 = Image.where(subject_id:3 , lesson_id:1)
    @img3les2 = Image.where(subject_id:3 , lesson_id:2)
    @img3les3 = Image.where(subject_id:3 , lesson_id:3)
    @img3les4 = Image.where(subject_id:3 , lesson_id:4)
    @img3les5 = Image.where(subject_id:3 , lesson_id:5)
    @img3les6 = Image.where(subject_id:3 , lesson_id:6)
    @img3les7 = Image.where(subject_id:3 , lesson_id:7)
    @img3les8 = Image.where(subject_id:3 , lesson_id:8)
    @img3les9 = Image.where(subject_id:3 , lesson_id:9)
    @img3les10 = Image.where(subject_id:3 , lesson_id:10)
    @img4les1 = Image.where(subject_id:4 , lesson_id:1)
    @img4les2 = Image.where(subject_id:4 , lesson_id:2)
    @img4les3 = Image.where(subject_id:4 , lesson_id:3)
    @img4les4 = Image.where(subject_id:4 , lesson_id:4)
    @img4les5 = Image.where(subject_id:4 , lesson_id:5)
    @img4les6 = Image.where(subject_id:4 , lesson_id:6)
    @img4les7 = Image.where(subject_id:4 , lesson_id:7)
    @img4les8 = Image.where(subject_id:4 , lesson_id:8)
    @img4les9 = Image.where(subject_id:4 , lesson_id:9)
    @img4les10 = Image.where(subject_id:4 , lesson_id:10)
    @img5les1 = Image.where(subject_id:5 , lesson_id:1)
    @img5les2 = Image.where(subject_id:5 , lesson_id:2)
    @img5les3 = Image.where(subject_id:5 , lesson_id:3)
    @img5les4 = Image.where(subject_id:5 , lesson_id:4)
    @img5les5 = Image.where(subject_id:5 , lesson_id:5)
    @img5les6 = Image.where(subject_id:5 , lesson_id:6)
    @img5les7 = Image.where(subject_id:5 , lesson_id:7)
    @img5les8 = Image.where(subject_id:5 , lesson_id:8)
    @img5les9 = Image.where(subject_id:5 , lesson_id:9)
    @img5les10 = Image.where(subject_id:5 , lesson_id:10)
    @img6les1 = Image.where(subject_id:6 , lesson_id:1)
    @img6les2 = Image.where(subject_id:6 , lesson_id:2)
    @img6les3 = Image.where(subject_id:6 , lesson_id:3)
    @img6les4 = Image.where(subject_id:6 , lesson_id:4)
    @img6les5 = Image.where(subject_id:6 , lesson_id:5)
    @img6les6 = Image.where(subject_id:6 , lesson_id:6)
    @img6les7 = Image.where(subject_id:6 , lesson_id:7)
    @img6les8 = Image.where(subject_id:6 , lesson_id:8)
    @img6les9 = Image.where(subject_id:6 , lesson_id:9)
    @img6les10 = Image.where(subject_id:6 , lesson_id:10)
    @img7les1 = Image.where(subject_id:7 , lesson_id:1)
    @img7les2 = Image.where(subject_id:7 , lesson_id:2)
    @img7les3 = Image.where(subject_id:7 , lesson_id:3)
    @img7les4 = Image.where(subject_id:7 , lesson_id:4)
    @img7les5 = Image.where(subject_id:7 , lesson_id:5)
    @img7les6 = Image.where(subject_id:7 , lesson_id:6)
    @img7les7 = Image.where(subject_id:7 , lesson_id:7)
    @img7les8 = Image.where(subject_id:7 , lesson_id:8)
    @img7les9 = Image.where(subject_id:7 , lesson_id:9)
    @img7les10 = Image.where(subject_id:7 , lesson_id:10)
    @img8les1 = Image.where(subject_id:8 , lesson_id:1)
    @img8les2 = Image.where(subject_id:8 , lesson_id:2)
    @img8les3 = Image.where(subject_id:8 , lesson_id:3)
    @img8les4 = Image.where(subject_id:8 , lesson_id:4)
    @img8les5 = Image.where(subject_id:8 , lesson_id:5)
    @img8les6 = Image.where(subject_id:8 , lesson_id:6)
    @img8les7 = Image.where(subject_id:8 , lesson_id:7)
    @img8les8 = Image.where(subject_id:8 , lesson_id:8)
    @img8les9 = Image.where(subject_id:8 , lesson_id:9)
    @img8les10 = Image.where(subject_id:8 , lesson_id:10)
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
