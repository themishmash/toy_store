class Toy < ApplicationRecord
  belongs_to :user
  belongs_to :manufacturer
  has_one_attached :picture
end 