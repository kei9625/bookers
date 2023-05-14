class BooksController < ApplicationController
  #コントローラの中にあるものを『アクション』、その中のものを『メソッド』
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end

  def index
    @books = Book.all
  end

  def edit
  end

  def show
    @book = Book.find(params[:id])
  end

  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end