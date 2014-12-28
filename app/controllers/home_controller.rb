class HomeController < ApplicationController
  def index
    puts '***'
    if user_signed_in?
      redirect_to :controller =>'todo', :action => 'index'
    end
  end
end
