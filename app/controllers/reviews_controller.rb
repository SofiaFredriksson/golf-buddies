class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
      if @review.save
        redirect_to @review
      else
        render :new
      end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.update(review_params)
  end

  def destroy
     @review = Review.find(params[:id]).destroy
     redirect_to user_path(@review.user)


   end


private

def review_params
  params.require(:review).permit(:content, :rank, :user_id, :club_id)
end
end
