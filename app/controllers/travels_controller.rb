class TravelsController < ApplicationController
  def index
    @articles = Article.where(genre_id: 4).order("created_at DESC")
  end
end
