class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
  
  characters.each do |character|
    character.actor
  end
   binding.pry
  end
end