class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

end
