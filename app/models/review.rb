class Review < ApplicationRecord
  belongs_to :user
  belongs_to :club
  accepts_nested_attributes_for :club



end
