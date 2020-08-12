require 'open-uri'
require 'nokogiri'
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :full_name, presence: true
  validates :personal_website_url, presence: true

  has_many :friendship_list, foreign_key: :user_id, class_name: "Friendship"
  has_many :friends, through: :friendship_list

  has_many :on_friendship_list, foreign_key: :friended_user_id, class_name: "Friendship"
  has_many :friendlies, through: :on_friendship_list 

  #before_create :pull_headers
  #before_save :update_headers

  def pull_headers
    header_str = ""
    ['h1','h2','h3'].each do |html_tag|
      html = URI.parse(self.personal_website_url).open
      header_str += Nokogiri::HTML.parse(html).css(html_tag).map(&:text).join(' | ')
    end
    self.headers = header_str
  end

  def update_headers
    self.pull_headers() if self.changes[:personal_website_url]
  end     

  
end
