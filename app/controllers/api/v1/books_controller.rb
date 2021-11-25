class Api::V1::BooksController < ApplicationController
	before_action :authorized

    # Listar todos os livros
	def index
		@books = Book.all
    	render json: @books
	end
        
end
