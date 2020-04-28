class User < ApplicationRecord
   
    validates :email, presence: true, uniqueness: {message: "already subscribed"}
    has_many :competences, class_name: 'competences'
end
