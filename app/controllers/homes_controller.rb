class HomesController < ApplicationController
  def index
  end

  def show
    @user = User.find(current_user.id)
    @profile = @user.profile
  end

  def edit
    binding.pry
    @user = User.find(current_user.id)
    @user.profile.build
  end

  def update

  end

end
