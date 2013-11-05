class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
    @image = @picture.source
    @caption = @picture.caption
  end
end
