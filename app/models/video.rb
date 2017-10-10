class Video < ApplicationRecord
  has_many :marks, :comment
end
