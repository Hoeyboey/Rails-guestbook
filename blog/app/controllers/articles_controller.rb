class ArticlesController < ApplicationController
	def show
		@article = Article.find(params[:id])
	end

	def index
		@article = Article.all
	end

	def new
	end
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end
	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to @article
	end
	private 
		def article_params
			params.require(:article).permit(:title, :text, :poster_name)
		end
end
