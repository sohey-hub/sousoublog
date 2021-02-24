class Article < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :title
    validates :text
    validates :genre_id
  end

  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end
