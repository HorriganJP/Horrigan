class Book < ApplicationRecord
  has_many :chapters
  belongs_to :author
end
