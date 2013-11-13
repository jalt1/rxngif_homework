class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find_by(id: params[:id])
  end

  def new
  end

  def create
    @photo = Photo.new
    @photo.source = params[:source]
    @photo.caption = params[:caption]

    if @photo.save
      redirect_to photos_url, notice: "Photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @photo = Photo.find_by(id: params[:id])
  end

  def update
    @photo = Photo.find_by(id: params[:id])
    @photo.source = params[:source]
    @photo.caption = params[:caption]

    if @photo.save
      redirect_to photos_url, notice: "Photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find_by(id: params[:id])
    @photo.destroy

    redirect_to photos_url, notice: "Photo deleted."
  end
end
