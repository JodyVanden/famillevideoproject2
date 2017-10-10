class Comment < ApplicationRecord
  belongs_to :video
  belongs_to :user

  validates :comment, length: { minimum: 20 }

end
