class BookmarksController < ApplicationController
  before_action :set_program
  def create
    @bookmark = Bookmark.new(params[:program])
    @bookmark.program = @program
    @bookmark.save
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private

  def set_program
    @program = Program.find(params[:program_id])
  end
end
