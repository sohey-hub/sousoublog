class MoneysController < ApplicationController
  def index
    @articles = Article.where(genre_id: 2).order("created_at DESC")
  end
end
