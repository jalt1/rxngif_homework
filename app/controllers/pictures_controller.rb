class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
    @image = @picture.source
    @caption = @picture.caption
  end

  def index
    @all_pictures = Picture.all
    # @all_pictures.each do
    #   @image = @picture.source
    #   @caption = @picture.caption
    #end
  end

  def new
  end

  def create
    @new_picture = Picture.new
    @new_picture.source = params[:source]
    @new_picture.caption = params[:caption]
    @new_picture.save
  end

  def destroy
    @destroy_this_pic = Picture.find(params[:id])
  end

  def edit
    @edit_pic = Picture.find(params[:id])

  end
end
