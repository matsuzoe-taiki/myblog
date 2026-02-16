class ArticlesController < ApplicationController
  def index
    @articles = Article.all #全ての記事を取得
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new #空の記事オブジェクトを作成
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: "記事を投稿しました。"
    else
      render :new
    end
  end

  private

  def article_params
    # これで悪いやつを無視する
    params.require(:article).permit(:title, :content)
  end

end