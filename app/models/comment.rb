class Comment < ApplicationRecord
  belongs_to :video
  belongs_to :user

  validates :content, length: { minimum: 10 }

end
