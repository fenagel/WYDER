class DashboardsController < ApplicationController
  def index
    @user = current_user
    @bookmarks = Bookmark.includes(:subjects, :universities).all
    @programs = @user.programs
    @bookmarked_programs = @user.programs

    if params[:subject_name].present?
      @programs = @programs.where(subject: Subject.find_by(name: params[:subject_name]))

    elsif params[:program_name].present?
      @programs = @programs.where(name: params[:program_name])

    elsif params[:university_name].present?
      @programs = @programs.where(university: University.find_by(name: params[:university_name]))

    elsif
      params[:university_location].present?
      @programs = @programs.where(university: University.find_by(location: params[:university_location]))

    else
      @all_videos = @user.programs

    end
  end
end
