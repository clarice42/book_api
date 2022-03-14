class Api::V1::BooksController < ApplicationController
	before_action :authorized

    # Listar todos os livros
	def index
		@books = Book.all
    	render json: @books
	end

	def create
		@book = Book.create(book_params)
		if @book.valid?
			render json: {book: @book}	
		else
			render json: {error: "Something went wrong..."}
		end
	end

	private

	def book_params
		params.permit(:name, :description, :image)
	end
        
end
