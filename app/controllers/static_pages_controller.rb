class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def catalog
    @books = Book.all
  end
  
  def buy
  end
end
