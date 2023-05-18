class BooksController < ApplicationController
  #コントローラの中にあるものを『アクション』、その中のものを『メソッド』

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created!"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated!"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      flash[:notice] = "Book is failed to update."
      render :edit
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed!"
    redirect_to '/books'
  end

  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end