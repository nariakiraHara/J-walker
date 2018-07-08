class ArticlesController < ApplicationController
  def new
    @article = current_user.articles.build
  end

  def create
    binding.pry
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to profile_path(current_user)
    else
      render 'new'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
