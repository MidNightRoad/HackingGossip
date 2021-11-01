class Gossip < ApplicationRecord

  belongs_to :user
  has_many :join_table_gossip_tags
  has_many :tags, through: :join_table_gossip_tags


  def find_author_name
    author_id = self.user_id.to_i
    author_array = []
    author_array << User.find_by(id: author_id)
    author_name = author_array[0].first_name
    return author_name
  end

  # def find_author
  #   author_id = self.user_id.to_i
  #   author_array = []
  #   author_array << User.find_by(id: author_id)
  #   author_name = author_array[0]
  #   return author
  # end


end
 #def self array
 
  #@all_gossips_array.each do |gossip|
  #title = gossip.title 
  #author_id = gossip.user_id
  #author_array = []
  #author_array = User.where(id: author_id)
  #author_name = author_array[0].first_name
   
    #@author_name
    #gossip.content 
   #end

 #end