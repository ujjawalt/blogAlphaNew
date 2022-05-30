class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:id])
    end

    def index 
        @articles = Article.all    
    end

    def new
        @article = Article.new
    end

    def create 
        @article = Article.new(params.require(:articles).permit(:title, :description))
        if
            @article.save
            flash[:notice] = "Article was created successfully"
            redirect_to @article
            #redirect_to article_path(@article) will do the same action as above code. 
        else
            render 'new'
        end
    end 

end