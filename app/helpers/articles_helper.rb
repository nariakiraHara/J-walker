module ArticlesHelper

  def current_article_writer?
    if user_signed_in?
      current_user.articles.find(params[:article_id]).try(:writer?)
    end
  end
end
