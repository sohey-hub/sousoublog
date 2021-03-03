class MentalsController < ApplicationController
  def index
    @articles = Article.where(genre_id: 5).order("created_at DESC")
  end
end
