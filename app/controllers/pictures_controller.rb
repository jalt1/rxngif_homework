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

    redirect_to "http://localhost:3000/all_pictures", :notice => "Your picture with ID #{@new_picture[:id]} has been created."
  end

  def destroy
    @destroy_this_pic = Picture.find(params[:id])

    redirect_to "http://localhost:3000/all_pictures", :notice => "Your picture has been destroyed."
  end

  def edit
    @edit_pic = Picture.find(params[:id])
  end

  def update
    @update_pic = Picture.find(params[:id])
    @update_pic.source = params[:source]
    @update_pic.caption = params[:caption]
    @update_pic.save

    redirect_to "http://localhost:3000/picture_details/#{params[:id]}", :notice => "Your picture with ID #{@update_pic[:id]} has been updated."
  end

end
