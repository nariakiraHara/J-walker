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

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article.id)
    else
      render 'edit'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
