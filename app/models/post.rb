class Post < ApplicationRecord
  
  belongs_to :user
  has_many :comments
  
  validates :title,  presence: true,
                    length: { maximum: 50 }
                    
  validates :text, presence: true
  
  validates :user_id, presence: true
end
