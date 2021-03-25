class ProgramingsController < ApplicationController
  def index
    @articles = Article.where(genre_id: 1).order("created_at DESC")
  end
end
