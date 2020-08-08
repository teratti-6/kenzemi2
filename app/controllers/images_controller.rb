class ImagesController < ApplicationController
  def new
    @image = Image.new
    @image.name = "hogehoge"
  end

  def create
    @image = Image.new(image_params)
    @image.name = params[:image][:image].original_filename
    @image.image = params[:image][:image].read

    if @image.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @image = Article.find(params[:id])
    @imgid = @image.subject_id
    @subject = Subject.find(@imgid)
    @pdf = Image.where(subject_id: @imgid)
  end

  def edit
    @image = Image.all
  end
  private

    def image_params
      params.require(:image).permit(:name, :image)
    end

end
