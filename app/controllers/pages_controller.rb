class PagesController < ApplicationController

	def new

	end
	def show
		@article = Article.new(article_params)
		@article.save
	end
	

private	
	def article_params

	end
end
