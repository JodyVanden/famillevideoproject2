class Video < ApplicationRecord
  has_many :marks, dependent: :destroy
  has_many :comment, dependent: :destroy

  validates :name, :url, presence: true
end
