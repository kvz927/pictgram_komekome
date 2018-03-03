class PhotosController < ApplicationController
  def show
    @show = Photo.includes(:user).find(params[:id])
    @comments = @photo.comments.includes(:user).all
    @comment = @photo.comments.build(user_id: current_user.id) if current_user
end
