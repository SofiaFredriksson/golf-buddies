class User < ApplicationRecord
  has_many :reviews
  has_many :clubs, through: :reviews

  def name
    self.first_name + " " + self.last_name
  end
end
