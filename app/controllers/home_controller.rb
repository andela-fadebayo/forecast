class HomeController < ApplicationController
  def index
    if guest_signed_in?
      @home_bg = 'home-in-bg'
      @title = "Welcome, #{current_guest.first_name}"
    else
      @title = 'Home'
      @home_bg = 'home-bg'
    end
  end
end