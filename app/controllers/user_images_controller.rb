class UserImagesController < ApplicationController
  def index
    @user = User.find(params[:profile_id])
    @user_images = UserImage.where(user_id: params[:profile_id])
  end

  def create
    @new_user_image = current_user.user_images.build(image_params)
    if @new_user_image.save
    else
    end
  end

  def show
    @user = User.find(params[:id])
    @user_images = UserImage.find(params[:id])
  end

  private
    def image_params
      params.require(:user_image).permit(:image)
    end

end
