class UserInterest < ActiveRecord::Base
  belongs_to :users
  belongs_to :interests

  validates :user, :interest, presence: true
end
