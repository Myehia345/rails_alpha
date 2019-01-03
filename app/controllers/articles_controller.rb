class ArticlesController < ApplicationController
   
   def new
       @article = Article.new
   end
    def create
        @article = Article.new(article_param)
        @article.save
        redirect_to_article_path(@article)
    end
    private
    def article_param
       params.require(:article).permit(:title,:descripton) 
    end
end