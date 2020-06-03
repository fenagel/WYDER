class DashboardsController < ApplicationController
  def index
    @user = current_user
    @bookmarks = Bookmark.all
    @programs = Program.all
    @subjects = Subject.all
    @universities = University.all

    if params[:query].present?
      @bookmarks = Program.where(subject: Subject.find_by(name: params[:subject_name]))
    else
      @bookmarks = Bookmark.all
    end
  end
end
