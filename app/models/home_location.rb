class HomeLocation < ActiveRecord::Base
  belongs_to :home
  belongs_to :location

  validates :home, :location, presence: true
end
