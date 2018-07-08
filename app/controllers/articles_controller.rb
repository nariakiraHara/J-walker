class ArticlesController < ApplicationController
  def new
    @article = current_user.articles.build
  end

  def create
    @current_user.articles.build(article_params)
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
