class ArticlesController < ApplicationController
  def new
    @article = current_user.articles.build
  end

  def create
    @article = Artiles.new(article_params)
  end

  private
    def article_params
      params.require(:article).permit(:head, :content)
    end
end
