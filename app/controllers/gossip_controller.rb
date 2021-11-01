class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params[:user_entry])
    @gossip_title = @gossip.title 
    @gossip_content = @gossip.content
    @gossip_author = @gossip.find_author_name
    @gossip_author_id = @gossip.user_id.to_i
  end
end
