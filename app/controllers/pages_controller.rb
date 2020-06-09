class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @programs = Program.all
    @universities = University.all
    uni_locations = []
    @universities.each do |u|
      uni_locations << u.location
    end
    @no_duplicates_uni = uni_locations.uniq
  end
end
