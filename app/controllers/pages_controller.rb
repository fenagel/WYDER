class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @programs = Program.all
    @locations = []
    @programs.each do |p|
      @locations << p.university.location
    end
  end

end
