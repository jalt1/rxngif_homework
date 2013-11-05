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
end
