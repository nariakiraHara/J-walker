class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @articles = @user.articles.paginate(page: params[:page])
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
      params.require(:user).permit(:comment,:birthday, :prefecture_id, :dream_place)
    end
end
