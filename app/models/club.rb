class Club < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews


  def average_ranking
    ranks = []
    self.reviews.each do |review|
      ranks << review.rank
    end
    total = ranks.sum
    size = ranks.size

    average = total/size
    average
  end

  def number_of_reviews
    self.reviews.count
  end
end
