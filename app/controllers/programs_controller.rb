class ProgramsController < ApplicationController
  before_action :set_program, only: [:show, :edit, :update, :destroy]

  def index
    @programs = Program.all
    if params[:subject].present?
      sql_query = " \
        subjects.name @@ :query \
      "
      @programs = @programs.joins(:subject).where(sql_query, query: "%#{params[:subject]}%")
    end

    # if params[:subject].present?
    #   @programs = Program.joins(:subjects).where(name: params[:subject])
    # end

    if params[:degree].present?
      @programs = @programs.where(degree: params[:degree])
    end

    if params[:locations].present?
      @programs = @programs.joins(:university).where(universities: { location: params[:locations] })
    end
      @subjects = Subject.all
      @universities = University.all
      @uni_locations = []
      @names = []
      @subjects.each do |s|
        @names << s.name
      end
      @universities.each do |u|
        @uni_locations << u.location
      end
      @no_duplicates = @names.uniq
      @no_duplicates_uni = @uni_locations.uniq
  end

  def show
    @bookmark = Bookmark.find_by(user: current_user, program: @program)
    if @bookmark.nil?
      @bookmark = Bookmark.new
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end
end
