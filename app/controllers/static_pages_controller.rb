class StaticPagesController < ApplicationController
  def home
  end

  def catalog
    @books = Book.all
  end
  
  def buy
  end
end
