class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @articles = @user.articles.paginate(page: params[:page])
    @user_images = UserImage.where(user_id: params[:id])
    @user_images = @user_images.nil? ? @user.user_images.build : @user_images
  end

  def edit
    @user = current_user
  end

  def update
    if current_user.update(user_params)
      redirect_to profile_path
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:comment,:birthday, :prefecture_id, :dream_place, :image)
    end
end
