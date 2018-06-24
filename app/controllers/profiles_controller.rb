class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    binding.pry
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to profile_path
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:comment,:birthday, :prefecture_id, :want)
    end
end
