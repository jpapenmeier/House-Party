class User < ActiveRecord::Base
  has_many :user_interests
  has_many :interests, through: :user_interests
  belongs_to :house

  attr_accessor :interest_id

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.image = auth['info']['image']
      user.email = auth['info']['email']
      user.gender = auth['extra']['raw_info']['gender']
      user.birthday = auth['extra']['raw_info']['birthday']
      user.link = auth['extra']['raw_info']['link']
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

  def self.age
    age = (Date.today - user.birthday).to_i / 365
    age
  end

  def interest_id=(ids)
    ids.each do |interest|
      UserInterest.find_or_create_by(user_id: id, interest_id: interest)
    end
  end


  validates :name, :link, :birthday, :uid, :provider, :gender, presence: true
  validates :uid, :link, uniqueness: true

end
