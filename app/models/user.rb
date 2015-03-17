class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
		:omniauthable, :omniauth_providers => [:twitter, :facebook]
	
	has_many :user_provider, :dependent => :destroy

 def tweet(tweet)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "v6SUG2SjQXKaeC5iVJ4SdXydD"
      config.consumer_secret     = "iPq0SNso63vSRPPLQVstKa4z1Dx7jCYqyIr3uWs22Y3ILZNNdE"
      config.access_token        = oauth_token
      config.access_token_secret = oauth_secret
    end
    
    client.update(tweet)
  end
end
#def self.from_omniauth(auth)
#      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
#        user.provider = auth.provider
#        user.uid = auth.uid
#        user.email = auth.info.email
#        user.password = Devise.friendly_token[0,20]
#      end
#  end





