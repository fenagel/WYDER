class DashboardsController < ApplicationController
  def index
    @user = current_user
    @bookmarks = Bookmark.all
    @programs = Program.all
    @subjects = Subject.all
    @universities = University.all
  end
end
