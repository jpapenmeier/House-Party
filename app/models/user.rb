class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.image = auth['image']
      user.email = auth['email']
      user.gender = auth['gender']
      user.age = auth['age']
      user.link = auth['link']
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

end
