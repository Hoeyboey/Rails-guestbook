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
		redirect_to articles_path, notice: "Post successfully deleted!"
	end
	def create
		@article = Article.new(article_params)
		@article.valid?
		@article.save(validate: true)
		redirect_to articles_path, notice: "Post successfully made!"
	end
	private 
		def article_params
			params.require(:article).permit(:title, :text, :poster_name)
		end
end
