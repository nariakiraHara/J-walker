class HomesController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @profile = @user.profile
  end

  def edit
    @user = User.find(params[:id])
    @profile = @user.profile
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to home_path
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:comment, profile_attributes: [:birthday, :want])
    end

end
