class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role   
  has_many :feedbacks
  has_many :requestedfeedbacks
  has_many :user_badges
  has_many :feedback_left, class_name: :feedback, foreign_key: :from_user, order: 'created_at DESC'

  has_many :events

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :role_id, :id, :profile_pic
  # attr_accessible :title, :body
  mount_uploader :profile_pic, BadgeUploader
end
