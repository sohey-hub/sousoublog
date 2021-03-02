class BooksController < ApplicationController
  def index
    @articles = Article.where(genre_id: 3).order("created_at DESC")
  end
end
