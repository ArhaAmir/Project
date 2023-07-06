class User < ApplicationRecord
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
    validates :password_field, length:{minimum: 5,allow_nil:true}
    has_many :stories, class_name: "stories", foreign_key: "story_id"
    has_many :likes, class_name: "likes", foreign_key: "like_id"
end
