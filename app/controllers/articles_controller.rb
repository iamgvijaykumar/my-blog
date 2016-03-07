class ArticlesController < ApplicationController
	before_action :set_article, only: [:edit,:update,:show,:destroy]


		def new
			@article = Article.new
		end

		def create
			@article = Article.new(a_params)
			@article.user = User.first
			if @article.save
			flash[:success] = "Article was created"
			redirect_to article_path(@article)
			else
			render 'new'
		end
		end

	def destroy
		
		@article.destroy
		flash[:danger] = "Article Deleted"
		redirect_to articles_path
	end




	def show
		
	end
	def edit
		
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(a_params)
			flash[:success] = "Article was Updated"
		redirect_to article_path(@article)
		else
		render 'new'
		end

	end	

	def index
		@articles = Article.all
	end	



private
def set_article
	@article = Article.find(params[:id])
end	
def a_params
	params.require(:article).permit(:title, :description)
end

end
