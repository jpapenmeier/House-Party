class Home < ActiveRecord::Base
  has_many :users
  has_many :home_locations
  has_many :locations, through: :home_locations

  validates :name, :move_in_month, :rent_per_person, :description, :bedrooms,
            presence: true

  validates :name, unique: true


  def self.home_interests
    group_interests = []
    self.users.each do |user|
      group_interests << user.interests
    end
    group_interests.uniq    
  end
end
