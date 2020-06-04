class BookmarksController < ApplicationController
  before_action :set_program
  def create
    @bookmark = Bookmark.new(params[:program])
    @bookmark.program = @program
    @bookmark.user = current_user
    @bookmark.save
    redirect_to @program
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to @program
  end

  private

  def set_program
    @program = Program.find(params[:program_id])
  end
end
