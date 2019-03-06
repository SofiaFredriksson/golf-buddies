class User < ApplicationRecord
  has_many :reviews
  has_many :clubs, through: :reviews
  validates_uniqueness_of :username



  def name
    self.first_name + " " + self.last_name
  end

  def self.user_by_country
    arr = []
    User.all.each do |user|
      arr << "#{user.country}, #{user.name}"
    end
    arr
  end

  def recommend_buddies_country
    recommended_buddies = []
      User.all.user_by_country.each do |user|
        if user.include? self.country
          recommended_buddies << user
        end
      end
      recommended_buddies.select{|buddy| !buddy.include?self.name}
  end

  def self.user_by_handicap
    arr = []
    User.all.each do |user|
      arr << {name: user.name, handicap: user.handicap}
    end
    arr.sort_by{ |h | h[:handicap] }
  end

  def handicap_range
    low = self.handicap - 2
    high = self.handicap + 2
    range = (low..high)
    range
  end

  def recommend_buddies_handicap
    arr = []
    User.all.user_by_handicap.each do |key|
      key.delete_if{ |k,v| v == self.handicap }
        key.each do |k, v|
          if handicap_range.include? v
            arr << "#{key[:name]}: #{key[:handicap]}"
          end
        end
      end
      arr.select{|buddy| !buddy.include?self.name}
  end

  def recommend_buddies_club
    arr = []
    User.all.each do |user|
      user.clubs.each do |club|
        if self.clubs.include?(club)
        arr << "#{user.name}: #{user.clubs.map{|club| club.name}.join(", ")}"
       end
     end
   end
     arr.select{|buddy| !buddy.include?self.name}
  end


end
