class ClubsController < ApplicationController
  def index
    @clubs = Club.order(:country)
  end

  def show
    @club = Club.find(params[:id])
    @review = Review.new
    @average = @club.average_ranking
  end
end
