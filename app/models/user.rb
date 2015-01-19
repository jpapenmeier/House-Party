class User < ActiveRecord::Base
  has_many :interests, through: :user_interests
  belongs_to :house

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.image = auth['extra']['raw_info']['image']
      user.email = auth['extra']['raw_info']['email']
      user.gender = auth['extra']['raw_info']['gender']
      user.age = (Date.today - auth['extra']['raw_info']['birthday'].to_date).to_i/365
      user.link = auth['extra']['raw_info']['link']
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

  validates :name, :link, :uid, :provider, :gender, presence: true #:age, :email
  validates :uid, :link, uniqueness: true

end
