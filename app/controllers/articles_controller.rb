class ArticlesController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show

  end

  def edit

  end

  def update
    @article.update(article_params)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def find_id
    article_id = params[:id]
    @article = Article.find(article_id)
  end
private
 def article_params
  params.require(:article).permit(:title, :content)

 end
end
