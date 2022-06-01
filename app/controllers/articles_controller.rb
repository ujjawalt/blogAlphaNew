class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def show

    end

    def index 
        @articles = Article.all    
    end

    def new
        @article = Article.new
    end

    def edit

    end

    def create 
        @article = Article.new(params.require(:articles).permit(:title, :description))
        #require will have articles as in prural with s
        if
            @article.save
            flash[:notice] = "Article was created successfully"
            redirect_to @article
            #redirect_to article_path(@article) will do the same action as above code. 
        else
            render 'new'
        end
    end
    
    def update
        if 
            @article.update(params.require(:article).permit(:title, :description))
            #require will have article as in singular without any s
            flash[:notice] = "Article was update successfully"
            redirect_to @article  
        else   
            render 'new'
        end
    end

    def destroy 

        @article.destroy
        redirect_to articles_path
    end

    private

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        
    end

end