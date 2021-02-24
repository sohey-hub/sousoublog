class Article < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :title
    validates :text
  end

  has_one_attached :image
end
