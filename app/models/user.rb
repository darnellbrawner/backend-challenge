class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :full_name, presence: true
         validates :personal_website_url, presence: true

         has_many :friendship_list, foreign_key: :user_id, class_name: "Friendship"
         has_many :friends, through: :friendship_list
       
         has_many :on_friendship_list, foreign_key: :friended_user_id, class_name: "Friendship"
         has_many :friendlies, through: :on_friendship_list 
end
