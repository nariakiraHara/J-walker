class ArticlesController < ApplicationController
  def new
    @article = current_user.articles.build
  end

  def create

  end
end
