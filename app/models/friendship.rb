class Friendship < ApplicationRecord
    belongs_to :friendly, foreign_key: :user_id, :class_name => "User"
    belongs_to :friends, foreign_key: :friended_user_id, :class_name => "User" 
    
    validates :user_id, presence: true
    validates :friended_user_id, presence: true 
end
