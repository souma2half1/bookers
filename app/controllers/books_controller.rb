class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to root_path
  end

  def edit
  end

  def updated
  end

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
