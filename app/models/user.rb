class User < ActiveRecord::Base

validates :email, presence: true
validates :encrypted_password, presence: true
validates :first_name, presence: true
validates :last_name, presence: true
validates :birthday, presence: true
validates :gender, presence: true

has_many :votes

end
