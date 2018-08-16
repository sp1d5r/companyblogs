class ArticlesController < ApplicationController

    def new
    @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        @article.save

        # this is the if that determines if it passed the validation check.
        if @article.save
            flash[:notice] = "Article was successfully created"
            redirect_to article_path(@article)
        else
            render 'new'
        end

    end

    def show
        @article = Article.find(params[:id])
    end



    private
        def article_params
            params.require(:article).permit(:title, :descriptions)
        end
end
