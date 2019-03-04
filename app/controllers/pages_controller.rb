class PagesController < ApplicationController
  def home
    @clubs = Club.all
  end
end
