class BooksController < ApplicationController

  def index
    @books = Book.all.order(:author)
  end

  def show
    id = params[:id]
    @book = Book.find(id)
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new
    book.title = params[:book][:title]
    book.author = params[:book][:author]
    book.description = params[:book][:description]
    if book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    id = params[:id]
    @book = Book.find(id)
  end

  def update
    id = params[:id]
    book = Book.find(id)
    if !book.nil?
      book.title = params[:book][:title]
      book.author = params[:book][:author]
      book.description = params[:book][:description]
      if book.save
        redirect_to book_path(id)
      else
        render :edit
      end
    end
  end

  def destroy
    id = params[:id]
    @book = Book.find(id)
    @book.destroy
  end
end
