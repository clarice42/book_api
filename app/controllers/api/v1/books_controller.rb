class Api::V1::BooksController < ApplicationController

    # Listar todos os livros
	def index
		books = Book.order('created_at DESC');
		render json: {status: 'SUCCESS', message:'Livros carregados', data:books}, status: :ok
	end
        
end
