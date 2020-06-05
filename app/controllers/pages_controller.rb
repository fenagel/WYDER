class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @programs = Program.all
    @universities = University.all
  end

end
