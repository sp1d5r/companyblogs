class PagesController < ApplicationController
  def home
    # defining a home action
  end

  def about
    # defining an about action
    redirect_to articles_path if logged_in?
  end

end