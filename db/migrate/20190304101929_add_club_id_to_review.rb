class AddClubIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :club_id, :integer
  end
end
