class StaticController < ApplicationController
  def index
    @random_number= rand(10000)
    @user = User.first
    @all_gossips_array = Gossip.all
    # @all_users_array = User.all

    puts "Hey, I'm the first user #{@user.first_name}"
  end
  
  def team
  end

  def conta
  end
end
