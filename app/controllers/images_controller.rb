class ImagesController < ApplicationController
  def new
    @image = Image.new
    @image.name = "hogehoge"
  end

  def create
    @image = Image.new(image_paprams)
    @image.name = params[:image][:image].original_filename
    @image.image = params[:image][:image].read

    if @image.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def image_paprams
      params.require(:image).permit(:name, :image)
    end

end
