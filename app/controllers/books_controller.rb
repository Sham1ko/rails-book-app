class BooksController < ApplicationController
    def new
        @book = Book.new
    end

    def index
        @books = Book.all.order(created_at: :desc)
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to @book, notice: 'Book was successfully created.'
        else
            render :new
        end
    end

    def show
        @book = Book.find(params[:id])
        @comment = Comment.new
        @comments = @book.comments.order(created_at: :desc)
    end


    private
    def book_params
        params.require(:book).permit(:title, :author, :description, :published_date)
    end


end
