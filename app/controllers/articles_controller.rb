class ArticlesController < ApplicationController
	respond_to :html, :xml
	def new
  		@article = Article.new
  		respond_with @articles
	end
	def create
  		@article = Article.new(article_params)
 
  		if @article.save
  			cookies[:last_article_id] = @article.id
    		flash[:alert] = "Successfully created article."
    		redirect_to @article
  		else
    		render 'new'
  		end
  		
	end

	def edit
  		@article = Article.find(params[:id])
  		respond_with @articles
	end

	def update
  		@article = Article.find(params[:id])
 
  		if @article.update(article_params)
    		redirect_to @article
  		else
    		render 'edit'
  		end
  		
	end

	def destroy
  		@article = Article.find(params[:id])
  		@article.destroy
 	
  		redirect_to articles_path, :notice => "post is deleted" 
  		
	end


 	def index
    	@articles = Article.all
    	# respond_with @articlesdef format_name(user)
  	end
 
  	def show
    	@article = Article.find(params[:id])
    	respond_with @articles
  	end
	private
 		def article_params
    		params.require(:article).permit(:title, :text)
  	end
end