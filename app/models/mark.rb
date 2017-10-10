class Mark < ApplicationRecord
  belongs_to :video
  belongs_to :user

  validates :mark, numericality: { only_integer: true, less_than: 6 }
end
