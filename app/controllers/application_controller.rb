class ApplicationController < ActionController::Base
    include SessionsHelper
    protect_from_forgery with: :exception
    
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    def user_adm
      redirect_to(root_url) unless current_user.adm == true
    end
    #def search(input)
    #  @books = Book.all
    #  @books.each do |book|
    #    if input == book.name
    #      redirect_to book
    #    else
    #      redirect_to root_url
    #    end
      #end
    #end
end
