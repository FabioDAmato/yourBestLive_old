class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable  , :validatable, :omniauthable, omniauth_providers: [:facebook]


	def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.nome = auth.info.first_name
    user.cognome = auth.info.last_name
    user.username = auth.info.first_name + auth.info.last_name 
    user.provider = auth.provider
    user.uid = auth.uid
    user.password = "password"
  end
end






end
