class ArticlesController < ApplicationController
   
   def new
       @article = Article.new
   end

   def edit
       
       @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article_param)
        
        if @article.save
            flash[:notice] = "Article Sucessfully Created!"
            redirect_to article_path(@article)
        else
            render 'new'
        end
        
    end
    def update
        @article = Article.find(params[:id])
        
        if @article.update(article_param)
            flash[:notice] = "Article was successfully updated"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
        
    end
    
    def show
       @article = Article.find(params[:id])
    end
    
    private
    def article_param
       params.require(:article).permit(:title,:descripton) 
    end
end