class WelcomeController < ApplicationController
  def bonjour_name
    @user_name = params[:user_entry]  
    puts params[:user_entry] 
  end
end
