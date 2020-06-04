class DashboardsController < ApplicationController
  def index
    @user = current_user
    @bookmarks = Bookmark.includes(:subjects, :universities).all
    @programs = Program.all

    if params[:query].present?
      @bookmarks = Program.where(subject: Subject.find_by(name: params[:subject_name]))
    else
      @bookmarks = Bookmark.all
    end
  end
end
