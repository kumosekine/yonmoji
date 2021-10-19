class Idiom < ApplicationRecord
  validates :title, presence: true, length: { minimum:4 ,maximum:4 }
end
