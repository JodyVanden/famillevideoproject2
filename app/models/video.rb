class Video < ApplicationRecord
  has_many :marks, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, :url, presence: true
end
