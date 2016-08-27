class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
    @books = Book.all
  end

  def catalog
    @categories = Category.all
    @books = Book.all
  end
  
  def buy
  end
end
